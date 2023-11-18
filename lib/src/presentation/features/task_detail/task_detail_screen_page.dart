import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/task_detail/bloc/edit_detail/edit_task_cubit.dart';
import 'package:report_book/src/presentation/features/task_detail/bloc/profile_name/profile_name_cubit.dart';
import 'package:report_book/src/presentation/features/task_detail/provider/checkbox_provider.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book_core/report_book_core.dart';

part '_title_widget.dart';

part '_button_save_widget.dart';

part '_detail_task_widget.dart';

part '_checkbox_task_widget.dart';

part '_task_status_widget.dart';

part '_assign_name_task_widget.dart';

@RoutePage()
class TaskDetailScreenPage extends StatelessWidget {
  const TaskDetailScreenPage({
    @PathParam() required this.taskId,
    @PathParam() required this.assignId,
    @QueryParam() this.titleTask,
    @QueryParam() this.taskTypeModel,
    @QueryParam() this.isEnableEdit = false,
    @QueryParam() this.isDone = false,
    @QueryParam() this.detailTask,
  });

  final String taskId;
  final String assignId;
  final bool isDone;
  final String? titleTask;
  final String? detailTask;
  final TaskTypeModel? taskTypeModel;
  final bool isEnableEdit;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return EditTaskCubit.create(studentId: assignId, taskId: taskId);
          },
        ),
        ChangeNotifierProvider(create: (context) => CheckBoxProvider(isDone)),
        BlocProvider(
            create: (context) => ProfileNameCubit.create(userId: assignId))
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Tugas'),
          actions: [
            if (isEnableEdit) const _ButtonDeleteTask(),
            if (isEnableEdit)
              IconButton(
                onPressed: () => routeToUpdateTask(context),
                icon: const Icon(Icons.edit),
              )
          ],
        ),
        body: BlocListener<EditTaskCubit, ResourceState<void>>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => null,
            success: (code, message, data) => AutoRouter.of(context).pop(),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TitleWidget(title: titleTask),
              const Divider(),
              _DetailTaskWidget(detailTask: detailTask),
              const Divider(),
              const _AssignNameTask(),
              const Divider(),
              if (isEnableEdit) const _CheckBoxTaskWidget(),
              if (!isEnableEdit) _TaskStatusWidget(isDone: isDone),
              if (isEnableEdit)
                _ButtonSaveWidget(
                    taskTypeModel: taskTypeModel ?? TaskTypeModel.none),
            ],
          ),
        ),
      ),
    );
  }

  void routeToUpdateTask(BuildContext context) {
    AutoRouter.of(context).popAndPush(CreateTaskScreenRouter(
        isEdit: isEnableEdit,
        taskId: taskId,
        title: titleTask,
        detailTask: detailTask));
  }
}

class _ButtonDeleteTask extends StatelessWidget {
  const _ButtonDeleteTask();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => deleteTask(context),
      icon: const Icon(Icons.delete),
    );
  }

  void deleteTask(BuildContext context) {
    GoSimpleDialog.showDialog(
      context,
      title: 'Hapus Tugas',
      message: 'yakin ingin menghapus tugas?',
      onConfirm: () {
        context.read<EditTaskCubit>().deleteTask();
      },
    );
  }
}
