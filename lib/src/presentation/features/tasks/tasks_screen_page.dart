import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/tasks/bloc/task_list/task_list_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';

part '_task_content_list_widget.dart';

@RoutePage()
class TaskScreenPage extends StatelessWidget {
  const TaskScreenPage({@QueryParam() this.isTeacher = true});

  final bool isTeacher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: Provider(
        create: (context) => TaskListCubit.create(),
        child: const _TaskContentListWidget(),
      ),
      floatingActionButton: isTeacher ? FloatingActionButton(
        heroTag: 'task',
        onPressed: () {
          AutoRouter.of(context).push(const CreateTaskScreenRouter());
        },
        child: const Icon(Icons.add),
      ) : null,
    );
  }
}
