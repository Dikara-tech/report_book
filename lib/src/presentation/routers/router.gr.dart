// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AnnouncementDetailScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnnouncementDetailScreenPage(),
      );
    },
    AnnouncementScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnnouncementScreenPage(),
      );
    },
    ChatContactScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatContactScreenPage(),
      );
    },
    ChatDetailScreenRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ChatDetailScreenRouterArgs>(
          orElse: () => ChatDetailScreenRouterArgs(
                senderId: pathParams.getString('senderId'),
                chatId: queryParams.optString('chatId'),
                senderName: queryParams.optString('senderName'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatDetailScreenPage(
          senderId: args.senderId,
          chatId: args.chatId,
          senderName: args.senderName,
        ),
      );
    },
    ChatScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatScreenPage(),
      );
    },
    CreateAnnouncementScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateAnnouncementScreenPage(),
      );
    },
    CreateStudentScreenRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CreateStudentScreenRouterArgs>(
          orElse: () => CreateStudentScreenRouterArgs(
                isRegisterPage: queryParams.getBool(
                  'isRegisterPage',
                  true,
                ),
                userId: queryParams.optString('userId'),
                name: queryParams.optString('name'),
                email: queryParams.optString('email'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateStudentScreenPage(
          isRegisterPage: args.isRegisterPage,
          userId: args.userId,
          name: args.name,
          email: args.email,
        ),
      );
    },
    CreateTaskScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateTaskScreenPage(),
      );
    },
    HomeScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenPage(),
      );
    },
    LoginScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreenPage(),
      );
    },
    ProfileScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreenPage(),
      );
    },
    RegisterStudentScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterStudentScreenPage(),
      );
    },
    StudentsScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StudentsScreenPage(),
      );
    },
    TaskDetailScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskDetailScreenPage(),
      );
    },
    TaskScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskScreenPage(),
      );
    },
  };
}

/// generated route for
/// [AnnouncementDetailScreenPage]
class AnnouncementDetailScreenRouter extends PageRouteInfo<void> {
  const AnnouncementDetailScreenRouter({List<PageRouteInfo>? children})
      : super(
          AnnouncementDetailScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'AnnouncementDetailScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AnnouncementScreenPage]
class AnnouncementScreenRouter extends PageRouteInfo<void> {
  const AnnouncementScreenRouter({List<PageRouteInfo>? children})
      : super(
          AnnouncementScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'AnnouncementScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatContactScreenPage]
class ChatContactScreenRouter extends PageRouteInfo<void> {
  const ChatContactScreenRouter({List<PageRouteInfo>? children})
      : super(
          ChatContactScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'ChatContactScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatDetailScreenPage]
class ChatDetailScreenRouter extends PageRouteInfo<ChatDetailScreenRouterArgs> {
  ChatDetailScreenRouter({
    required String senderId,
    String? chatId,
    String? senderName,
    List<PageRouteInfo>? children,
  }) : super(
          ChatDetailScreenRouter.name,
          args: ChatDetailScreenRouterArgs(
            senderId: senderId,
            chatId: chatId,
            senderName: senderName,
          ),
          rawPathParams: {'senderId': senderId},
          rawQueryParams: {
            'chatId': chatId,
            'senderName': senderName,
          },
          initialChildren: children,
        );

  static const String name = 'ChatDetailScreenRouter';

  static const PageInfo<ChatDetailScreenRouterArgs> page =
      PageInfo<ChatDetailScreenRouterArgs>(name);
}

class ChatDetailScreenRouterArgs {
  const ChatDetailScreenRouterArgs({
    required this.senderId,
    this.chatId,
    this.senderName,
  });

  final String senderId;

  final String? chatId;

  final String? senderName;

  @override
  String toString() {
    return 'ChatDetailScreenRouterArgs{senderId: $senderId, chatId: $chatId, senderName: $senderName}';
  }
}

/// generated route for
/// [ChatScreenPage]
class ChatScreenRouter extends PageRouteInfo<void> {
  const ChatScreenRouter({List<PageRouteInfo>? children})
      : super(
          ChatScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'ChatScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateAnnouncementScreenPage]
class CreateAnnouncementScreenRouter extends PageRouteInfo<void> {
  const CreateAnnouncementScreenRouter({List<PageRouteInfo>? children})
      : super(
          CreateAnnouncementScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'CreateAnnouncementScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateStudentScreenPage]
class CreateStudentScreenRouter
    extends PageRouteInfo<CreateStudentScreenRouterArgs> {
  CreateStudentScreenRouter({
    bool isRegisterPage = true,
    String? userId,
    String? name,
    String? email,
    List<PageRouteInfo>? children,
  }) : super(
          CreateStudentScreenRouter.name,
          args: CreateStudentScreenRouterArgs(
            isRegisterPage: isRegisterPage,
            userId: userId,
            name: name,
            email: email,
          ),
          rawQueryParams: {
            'isRegisterPage': isRegisterPage,
            'userId': userId,
            'name': name,
            'email': email,
          },
          initialChildren: children,
        );

  static const String name = 'CreateStudentScreenRouter';

  static const PageInfo<CreateStudentScreenRouterArgs> page =
      PageInfo<CreateStudentScreenRouterArgs>(name);
}

class CreateStudentScreenRouterArgs {
  const CreateStudentScreenRouterArgs({
    this.isRegisterPage = true,
    this.userId,
    this.name,
    this.email,
  });

  final bool isRegisterPage;

  final String? userId;

  final String? name;

  final String? email;

  @override
  String toString() {
    return 'CreateStudentScreenRouterArgs{isRegisterPage: $isRegisterPage, userId: $userId, name: $name, email: $email}';
  }
}

/// generated route for
/// [CreateTaskScreenPage]
class CreateTaskScreenRouter extends PageRouteInfo<void> {
  const CreateTaskScreenRouter({List<PageRouteInfo>? children})
      : super(
          CreateTaskScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'CreateTaskScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreenPage]
class HomeScreenRouter extends PageRouteInfo<void> {
  const HomeScreenRouter({List<PageRouteInfo>? children})
      : super(
          HomeScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreenPage]
class LoginScreenRouter extends PageRouteInfo<void> {
  const LoginScreenRouter({List<PageRouteInfo>? children})
      : super(
          LoginScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreenPage]
class ProfileScreenRouter extends PageRouteInfo<void> {
  const ProfileScreenRouter({List<PageRouteInfo>? children})
      : super(
          ProfileScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterStudentScreenPage]
class RegisterStudentScreenRouter extends PageRouteInfo<void> {
  const RegisterStudentScreenRouter({List<PageRouteInfo>? children})
      : super(
          RegisterStudentScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'RegisterStudentScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StudentsScreenPage]
class StudentsScreenRouter extends PageRouteInfo<void> {
  const StudentsScreenRouter({List<PageRouteInfo>? children})
      : super(
          StudentsScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'StudentsScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaskDetailScreenPage]
class TaskDetailScreenRouter extends PageRouteInfo<void> {
  const TaskDetailScreenRouter({List<PageRouteInfo>? children})
      : super(
          TaskDetailScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'TaskDetailScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaskScreenPage]
class TaskScreenRouter extends PageRouteInfo<void> {
  const TaskScreenRouter({List<PageRouteInfo>? children})
      : super(
          TaskScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'TaskScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}
