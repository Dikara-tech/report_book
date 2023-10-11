import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

import '../features/login/login_screen_page.dart';

part 'router.gr.dart';

@lazySingleton
class AuthGuard extends AutoRouteGuard {
  final AuthenticationRepository _authenticationRepository;

  AuthGuard(this._authenticationRepository);

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final isLoggedIn = await _authenticationRepository.userIsLoggedIn();

    if (!isLoggedIn) {
      resolver.next(true);
    } else {
      //await router.push(const MainScopeRouter());
      resolver.next(false);
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
      page: CreateTaskMemoizationScreenRouter.page,
      path: '/create-task-memoization',
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
      page: HomeScreenPage.page,
      path: '/home',
    )
  ];
}
