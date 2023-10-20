import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book/src/presentation/features/announcement_detail/announcement_detail_screen_page.dart';
import 'package:report_book/src/presentation/features/announcements/announcement_screen_page.dart';
import 'package:report_book/src/presentation/features/chat_detail/chat_detail_screen_page.dart';
import 'package:report_book/src/presentation/features/chats/chat_screen_page.dart';
import 'package:report_book/src/presentation/features/create_announcement/create_announcement_screen_page.dart';
import 'package:report_book/src/presentation/features/create_task/create_task_screen_page.dart';
import 'package:report_book/src/presentation/features/home/home_screen_page.dart';
import 'package:report_book/src/presentation/features/login/login_screen_page.dart';
import 'package:report_book/src/presentation/features/profile/profile_screen_page.dart';
import 'package:report_book/src/presentation/features/register_student/register_student_screen_page.dart';
import 'package:report_book/src/presentation/features/students/student_screen_page.dart';
import 'package:report_book/src/presentation/features/task_detail/task_detail_screen_page.dart';
import 'package:report_book/src/presentation/features/tasks/tasks_screen_page.dart';
import 'package:report_book_core/report_book_core.dart';

part 'router.gr.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  final UserRepository _userRepository;
  final AuthenticationRepository _authenticationRepository;

  AuthGuard(this._userRepository, this._authenticationRepository);

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final userId = _authenticationRepository.userId;
    if (userId != null) {
      final userType = await _userRepository.getUserType(userId);
      switch (userType) {
        case UserType.student:
          resolver.next(false);
        case UserType.teacher:
          await resolver.redirect(const HomeScreenRouter(), replace: true);
        default:
          resolver.next(true);
      }
    } else {
      resolver.next(true);
    }
  }
}

@AutoRouterConfig(replaceInRouteName: 'Page,Router')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      guards: [inject<AuthGuard>()],
      path: '/',
      initial: true,
      page: LoginScreenRouter.page,
    ),
    AutoRoute(
      page: AnnouncementDetailScreenRouter.page,
      path: '/annoucement-detail',
    ),
    AutoRoute(
      page: ChatDetailScreenRouter.page,
      path: '/chat-detail',
    ),
    AutoRoute(
      page: CreateAnnouncementScreenRouter.page,
      path: '/create-annoucement',
    ),
    AutoRoute(
      page: CreateTaskScreenRouter.page,
      path: '/create-task',
    ),
    AutoRoute(
      page: RegisterStudentScreenRouter.page,
      path: '/register-student',
    ),
    AutoRoute(
      page: HomeScreenRouter.page,
      path: '/home',
      children: [
        RedirectRoute(path: '', redirectTo: 'students'),
        AutoRoute(page: StudentsScreenRouter.page, path: 'students'),
        AutoRoute(page: ChatScreenRouter.page, path: 'chats'),
        AutoRoute(page: AnnouncementScreenRouter.page, path: 'announcements'),
        AutoRoute(page: TaskScreenRouter.page, path: 'tasks'),
        AutoRoute(page: ProfileScreenRouter.page, path: 'profile'),
      ],
    ),
    AutoRoute(
      page: ProfileScreenRouter.page,
      path: '/profile',
    ),
    AutoRoute(
      page: TaskDetailScreenRouter.page,
      path: '/task-detail',
    )
  ];
}
