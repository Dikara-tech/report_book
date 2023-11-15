import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/create_task/bloc/create_task/create_task_cubit.dart';
import 'package:report_book/src/presentation/features/create_task/providers/form/task_form_provider.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';
import 'package:report_book_core/report_book_core.dart';

part '_button_create_task_widget.dart';

part '_textfield_title_widget.dart';

part '_textfield_detail_task_widget.dart';

part '_radio_task_widget.dart';

part '_textfield_assigned_task_widget.dart';

part '_button_update_task_widget.dart';

@RoutePage()
class CreateTaskScreenPage extends StatelessWidget {
  const CreateTaskScreenPage({
    @QueryParam() this.taskId,
    @QueryParam() this.studentId,
    @QueryParam() this.title,
    @QueryParam() this.assignedName,
    @QueryParam() this.detailTask,
    @QueryParam() this.taskTypeModel,
    @QueryParam() this.isTaskDone = false,
    @QueryParam() this.isEdit = false,
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Task')),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TaskFormProvider.create(
              taskId: taskId,
              assignId: studentId,
              title: title,
              detail: detailTask,
              assignName: assignedName,
              taskTypeModel: taskTypeModel,
              isDone: isTaskDone,
            ),
          ),
          BlocProvider(create: (context) => CreateTaskCubit.create())
        ],
        child: _ContentCreateTask(isEdit),
      ),
    );
  }
}

class _ContentCreateTask extends StatelessWidget {
  const _ContentCreateTask(this.isEdit);

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<CreateTaskCubit, ResourceState<void>>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        success: (code, message, data) => AutoRouter.of(context).pop(),
        error: (code, message, stacktrace, data) => SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            'Failed create Task',
            style: theme.textTheme.bodySmall?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
      child: ListView(
        children: [
          const _TextFieldTitleWidget(),
          if (!isEdit) const _TextFieldAssignedTaskWidget(),
          const _TextFieldDetailTaskWidget(),
          if (!isEdit) const _RadioTaskWidget(),
          if (!isEdit) const _ButtonCreateTaskWidget(),
          if (isEdit) const _ButtonUpdateTaskWidget()
        ],
      ),
    );
  }
}
