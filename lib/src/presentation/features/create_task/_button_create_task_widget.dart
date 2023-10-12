part of 'create_task_screen_page.dart';

class _ButtonCreateTaskWidget extends StatelessWidget {
  const _ButtonCreateTaskWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomButtonWidget(
        titleButton: 'Create Task',
      ),
    );
  }
}
