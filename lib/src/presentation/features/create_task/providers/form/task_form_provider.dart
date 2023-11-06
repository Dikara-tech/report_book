import 'package:flutter/cupertino.dart';
import 'package:report_book_core/report_book_core.dart';

class TaskFormProvider extends ValueNotifier<TaskModel> {
  TaskFormProvider(super.value);

  factory TaskFormProvider.create({
    String? taskId,
    String? title,
    String? detail,
    String? assignId,
    String? assignName,
    TaskTypeModel? taskTypeModel,
    required bool isDone,
  }) =>
      TaskFormProvider(TaskModel(
        taskId: taskId ?? '0',
        title: title ?? '',
        detail: detail ?? '',
        assignIdUser: assignId ?? '',
        assignName: assignName ?? '',
        createdAt: 0,
        taskTypeModel: taskTypeModel ?? TaskTypeModel.none,
        isDone: isDone,
      ));

  void onChangeTaskTitle(String title) {
    value = value.copyWith(title: title);
  }

  void onChangeTaskDetail(String detailTask) {
    value = value.copyWith(detail: detailTask);
  }

  void onChangeTaskType(TaskTypeModel taskTypeModel) {
    value = value.copyWith(taskTypeModel: taskTypeModel);
  }

  void changeAssignTask(String userId, String name) {
    value = value.copyWith(assignIdUser: userId, assignName: name);
  }
}
