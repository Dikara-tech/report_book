import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part '_title_widget.dart';

@RoutePage()
class TaskDetailScreenPage extends StatelessWidget {
  const TaskDetailScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Detail'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TitleWidget(),
        ],
      ),
    );
  }
}
