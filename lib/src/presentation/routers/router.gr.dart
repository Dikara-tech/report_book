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
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<AnnouncementScreenRouterArgs>(
          orElse: () => AnnouncementScreenRouterArgs(
                  isTeacher: queryParams.getBool(
                'isTeacher',
                true,
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnnouncementScreenPage(isTeacher: args.isTeacher),
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
      final args = routeData.argsAs<ChatScreenRouterArgs>(
          orElse: () => const ChatScreenRouterArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatScreenPage(isTeacher: args.isTeacher),
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
                userId: queryParams.optString('userId'),
                name: queryParams.optString('name'),
                email: queryParams.optString('email'),
                isEditStudent: queryParams.getBool(
                  'isEditStudent',
                  false,
                ),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateStudentScreenPage(
          userId: args.userId,
          name: args.name,
          email: args.email,
          isEditStudent: args.isEditStudent,
        ),
      );
    },
    CreateTaskScreenRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CreateTaskScreenRouterArgs>(
          orElse: () => CreateTaskScreenRouterArgs(
                taskId: queryParams.optString('taskId'),
                studentId: queryParams.optString('studentId'),
                title: queryParams.optString('title'),
                assignedName: queryParams.optString('assignedName'),
                detailTask: queryParams.optString('detailTask'),
                taskTypeModel: queryParams.get('taskTypeModel'),
                isTaskDone: queryParams.getBool(
                  'isTaskDone',
                  false,
                ),
                isEdit: queryParams.getBool(
                  'isEdit',
                  false,
                ),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateTaskScreenPage(
          taskId: args.taskId,
          studentId: args.studentId,
          title: args.title,
          assignedName: args.assignedName,
          detailTask: args.detailTask,
          taskTypeModel: args.taskTypeModel,
          isTaskDone: args.isTaskDone,
          isEdit: args.isEdit,
        ),
      );
    },
    HomeScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenPage(),
      );
    },
    HomeScreenStudentRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenStudentPage(),
      );
    },
    LoginScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreenPage(),
      );
    },
    ProfileScreenRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ProfileScreenRouterArgs>(
          orElse: () => ProfileScreenRouterArgs(
                  isTeacherMenu: queryParams.getBool(
                'isTeacherMenu',
                true,
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreenPage(isTeacherMenu: args.isTeacherMenu),
      );
    },
    RegisterStudentScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterStudentScreenPage(),
      );
    },
    ReportScreenRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReportScreenPage(),
      );
    },
    StudentsScreenRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<StudentsScreenRouterArgs>(
          orElse: () => StudentsScreenRouterArgs(
                  isReadOnly: queryParams.getBool(
                'isReadOnly',
                false,
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StudentsScreenPage(isReadOnly: args.isReadOnly),
      );
    },
    TaskDetailScreenRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<TaskDetailScreenRouterArgs>(
          orElse: () => TaskDetailScreenRouterArgs(
                taskId: pathParams.getString('taskId'),
                assignId: pathParams.getString('assignId'),
                titleTask: queryParams.optString('titleTask'),
                taskTypeModel: queryParams.get('taskTypeModel'),
                isEnableEdit: queryParams.getBool(
                  'isEnableEdit',
                  false,
                ),
                isDone: queryParams.getBool(
                  'isDone',
                  false,
                ),
                detailTask: queryParams.optString('detailTask'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TaskDetailScreenPage(
          taskId: args.taskId,
          assignId: args.assignId,
          titleTask: args.titleTask,
          taskTypeModel: args.taskTypeModel,
          isEnableEdit: args.isEnableEdit,
          isDone: args.isDone,
          detailTask: args.detailTask,
        ),
      );
    },
    TaskScreenRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<TaskScreenRouterArgs>(
          orElse: () => TaskScreenRouterArgs(
                isEnableCreateAndEdit: queryParams.getBool(
                  'isEnableCreateAndEdit',
                  true,
                ),
                reportReadOnly: queryParams.getBool(
                  'reportReadOnly',
                  false,
                ),
                studentId: queryParams.optString('studentId'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TaskScreenPage(
          isEnableCreateAndEdit: args.isEnableCreateAndEdit,
          reportReadOnly: args.reportReadOnly,
          studentId: args.studentId,
        ),
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
class AnnouncementScreenRouter
    extends PageRouteInfo<AnnouncementScreenRouterArgs> {
  AnnouncementScreenRouter({
    bool isTeacher = true,
    List<PageRouteInfo>? children,
  }) : super(
          AnnouncementScreenRouter.name,
          args: AnnouncementScreenRouterArgs(isTeacher: isTeacher),
          rawQueryParams: {'isTeacher': isTeacher},
          initialChildren: children,
        );

  static const String name = 'AnnouncementScreenRouter';

  static const PageInfo<AnnouncementScreenRouterArgs> page =
      PageInfo<AnnouncementScreenRouterArgs>(name);
}

class AnnouncementScreenRouterArgs {
  const AnnouncementScreenRouterArgs({this.isTeacher = true});

  final bool isTeacher;

  @override
  String toString() {
    return 'AnnouncementScreenRouterArgs{isTeacher: $isTeacher}';
  }
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
class ChatScreenRouter extends PageRouteInfo<ChatScreenRouterArgs> {
  ChatScreenRouter({
    bool isTeacher = true,
    List<PageRouteInfo>? children,
  }) : super(
          ChatScreenRouter.name,
          args: ChatScreenRouterArgs(isTeacher: isTeacher),
          initialChildren: children,
        );

  static const String name = 'ChatScreenRouter';

  static const PageInfo<ChatScreenRouterArgs> page =
      PageInfo<ChatScreenRouterArgs>(name);
}

class ChatScreenRouterArgs {
  const ChatScreenRouterArgs({this.isTeacher = true});

  final bool isTeacher;

  @override
  String toString() {
    return 'ChatScreenRouterArgs{isTeacher: $isTeacher}';
  }
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
    String? userId,
    String? name,
    String? email,
    bool isEditStudent = false,
    List<PageRouteInfo>? children,
  }) : super(
          CreateStudentScreenRouter.name,
          args: CreateStudentScreenRouterArgs(
            userId: userId,
            name: name,
            email: email,
            isEditStudent: isEditStudent,
          ),
          rawQueryParams: {
            'userId': userId,
            'name': name,
            'email': email,
            'isEditStudent': isEditStudent,
          },
          initialChildren: children,
        );

  static const String name = 'CreateStudentScreenRouter';

  static const PageInfo<CreateStudentScreenRouterArgs> page =
      PageInfo<CreateStudentScreenRouterArgs>(name);
}

class CreateStudentScreenRouterArgs {
  const CreateStudentScreenRouterArgs({
    this.userId,
    this.name,
    this.email,
    this.isEditStudent = false,
  });

  final String? userId;

  final String? name;

  final String? email;

  final bool isEditStudent;

  @override
  String toString() {
    return 'CreateStudentScreenRouterArgs{userId: $userId, name: $name, email: $email, isEditStudent: $isEditStudent}';
  }
}

/// generated route for
/// [CreateTaskScreenPage]
class CreateTaskScreenRouter extends PageRouteInfo<CreateTaskScreenRouterArgs> {
  CreateTaskScreenRouter({
    String? taskId,
    String? studentId,
    String? title,
    String? assignedName,
    String? detailTask,
    TaskTypeModel? taskTypeModel,
    bool isTaskDone = false,
    bool isEdit = false,
    List<PageRouteInfo>? children,
  }) : super(
          CreateTaskScreenRouter.name,
          args: CreateTaskScreenRouterArgs(
            taskId: taskId,
            studentId: studentId,
            title: title,
            assignedName: assignedName,
            detailTask: detailTask,
            taskTypeModel: taskTypeModel,
            isTaskDone: isTaskDone,
            isEdit: isEdit,
          ),
          rawQueryParams: {
            'taskId': taskId,
            'studentId': studentId,
            'title': title,
            'assignedName': assignedName,
            'detailTask': detailTask,
            'taskTypeModel': taskTypeModel,
            'isTaskDone': isTaskDone,
            'isEdit': isEdit,
          },
          initialChildren: children,
        );

  static const String name = 'CreateTaskScreenRouter';

  static const PageInfo<CreateTaskScreenRouterArgs> page =
      PageInfo<CreateTaskScreenRouterArgs>(name);
}

class CreateTaskScreenRouterArgs {
  const CreateTaskScreenRouterArgs({
    this.taskId,
    this.studentId,
    this.title,
    this.assignedName,
    this.detailTask,
    this.taskTypeModel,
    this.isTaskDone = false,
    this.isEdit = false,
  });

  final String? taskId;

  final String? studentId;

  final String? title;

  final String? assignedName;

  final String? detailTask;

  final TaskTypeModel? taskTypeModel;

  final bool isTaskDone;

  final bool isEdit;

  @override
  String toString() {
    return 'CreateTaskScreenRouterArgs{taskId: $taskId, studentId: $studentId, title: $title, assignedName: $assignedName, detailTask: $detailTask, taskTypeModel: $taskTypeModel, isTaskDone: $isTaskDone, isEdit: $isEdit}';
  }
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
/// [HomeScreenStudentPage]
class HomeScreenStudentRouter extends PageRouteInfo<void> {
  const HomeScreenStudentRouter({List<PageRouteInfo>? children})
      : super(
          HomeScreenStudentRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenStudentRouter';

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
class ProfileScreenRouter extends PageRouteInfo<ProfileScreenRouterArgs> {
  ProfileScreenRouter({
    bool isTeacherMenu = true,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileScreenRouter.name,
          args: ProfileScreenRouterArgs(isTeacherMenu: isTeacherMenu),
          rawQueryParams: {'isTeacherMenu': isTeacherMenu},
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRouter';

  static const PageInfo<ProfileScreenRouterArgs> page =
      PageInfo<ProfileScreenRouterArgs>(name);
}

class ProfileScreenRouterArgs {
  const ProfileScreenRouterArgs({this.isTeacherMenu = true});

  final bool isTeacherMenu;

  @override
  String toString() {
    return 'ProfileScreenRouterArgs{isTeacherMenu: $isTeacherMenu}';
  }
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
/// [ReportScreenPage]
class ReportScreenRouter extends PageRouteInfo<void> {
  const ReportScreenRouter({List<PageRouteInfo>? children})
      : super(
          ReportScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'ReportScreenRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StudentsScreenPage]
class StudentsScreenRouter extends PageRouteInfo<StudentsScreenRouterArgs> {
  StudentsScreenRouter({
    bool isReadOnly = false,
    List<PageRouteInfo>? children,
  }) : super(
          StudentsScreenRouter.name,
          args: StudentsScreenRouterArgs(isReadOnly: isReadOnly),
          rawQueryParams: {'isReadOnly': isReadOnly},
          initialChildren: children,
        );

  static const String name = 'StudentsScreenRouter';

  static const PageInfo<StudentsScreenRouterArgs> page =
      PageInfo<StudentsScreenRouterArgs>(name);
}

class StudentsScreenRouterArgs {
  const StudentsScreenRouterArgs({this.isReadOnly = false});

  final bool isReadOnly;

  @override
  String toString() {
    return 'StudentsScreenRouterArgs{isReadOnly: $isReadOnly}';
  }
}

/// generated route for
/// [TaskDetailScreenPage]
class TaskDetailScreenRouter extends PageRouteInfo<TaskDetailScreenRouterArgs> {
  TaskDetailScreenRouter({
    required String taskId,
    required String assignId,
    String? titleTask,
    TaskTypeModel? taskTypeModel,
    bool isEnableEdit = false,
    bool isDone = false,
    String? detailTask,
    List<PageRouteInfo>? children,
  }) : super(
          TaskDetailScreenRouter.name,
          args: TaskDetailScreenRouterArgs(
            taskId: taskId,
            assignId: assignId,
            titleTask: titleTask,
            taskTypeModel: taskTypeModel,
            isEnableEdit: isEnableEdit,
            isDone: isDone,
            detailTask: detailTask,
          ),
          rawPathParams: {
            'taskId': taskId,
            'assignId': assignId,
          },
          rawQueryParams: {
            'titleTask': titleTask,
            'taskTypeModel': taskTypeModel,
            'isEnableEdit': isEnableEdit,
            'isDone': isDone,
            'detailTask': detailTask,
          },
          initialChildren: children,
        );

  static const String name = 'TaskDetailScreenRouter';

  static const PageInfo<TaskDetailScreenRouterArgs> page =
      PageInfo<TaskDetailScreenRouterArgs>(name);
}

class TaskDetailScreenRouterArgs {
  const TaskDetailScreenRouterArgs({
    required this.taskId,
    required this.assignId,
    this.titleTask,
    this.taskTypeModel,
    this.isEnableEdit = false,
    this.isDone = false,
    this.detailTask,
  });

  final String taskId;

  final String assignId;

  final String? titleTask;

  final TaskTypeModel? taskTypeModel;

  final bool isEnableEdit;

  final bool isDone;

  final String? detailTask;

  @override
  String toString() {
    return 'TaskDetailScreenRouterArgs{taskId: $taskId, assignId: $assignId, titleTask: $titleTask, taskTypeModel: $taskTypeModel, isEnableEdit: $isEnableEdit, isDone: $isDone, detailTask: $detailTask}';
  }
}

/// generated route for
/// [TaskScreenPage]
class TaskScreenRouter extends PageRouteInfo<TaskScreenRouterArgs> {
  TaskScreenRouter({
    bool isEnableCreateAndEdit = true,
    bool reportReadOnly = false,
    String? studentId,
    List<PageRouteInfo>? children,
  }) : super(
          TaskScreenRouter.name,
          args: TaskScreenRouterArgs(
            isEnableCreateAndEdit: isEnableCreateAndEdit,
            reportReadOnly: reportReadOnly,
            studentId: studentId,
          ),
          rawQueryParams: {
            'isEnableCreateAndEdit': isEnableCreateAndEdit,
            'reportReadOnly': reportReadOnly,
            'studentId': studentId,
          },
          initialChildren: children,
        );

  static const String name = 'TaskScreenRouter';

  static const PageInfo<TaskScreenRouterArgs> page =
      PageInfo<TaskScreenRouterArgs>(name);
}

class TaskScreenRouterArgs {
  const TaskScreenRouterArgs({
    this.isEnableCreateAndEdit = true,
    this.reportReadOnly = false,
    this.studentId,
  });

  final bool isEnableCreateAndEdit;

  final bool reportReadOnly;

  final String? studentId;

  @override
  String toString() {
    return 'TaskScreenRouterArgs{isEnableCreateAndEdit: $isEnableCreateAndEdit, reportReadOnly: $reportReadOnly, studentId: $studentId}';
  }
}
