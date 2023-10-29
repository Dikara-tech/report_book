import 'package:flutter/cupertino.dart';
import 'package:report_book_core/report_book_core.dart';

class TaskFormProvider extends ValueNotifier<TaskModel> {
  TaskFormProvider(super.value);

  factory TaskFormProvider.create() => TaskFormProvider(
        const TaskModel(
          taskTitle: '',
          taskDetail: '',
          createdAt: 0,
          taskTypeModel: TaskTypeModel.DefaultTask,
          isCheck: false,
        ),
      );

  void onChangeTaskTitle(String title) {
    value = value.copyWith(taskTitle: title);
  }

  void onChangeTaskDetail(String detailTask) {
    value = value.copyWith(taskDetail: detailTask);
  }

  void onChangeTaskType(TaskTypeModel taskTypeModel) {
    value = value.copyWith(taskTypeModel: taskTypeModel);
  }
}
