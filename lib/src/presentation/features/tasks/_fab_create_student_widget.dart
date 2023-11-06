part of 'tasks_screen_page.dart';

class _FabCreateStudentWidget extends StatelessWidget {
  const _FabCreateStudentWidget({this.isTeacher = false});

  final bool isTeacher;

  @override
  Widget build(BuildContext context) {
    if (isTeacher) {
      return FloatingActionButton(
        heroTag: 'task',
        onPressed: () {
          AutoRouter.of(context).push(CreateTaskScreenRouter(isEdit: true));
        },
        child: const Icon(Icons.add),
      );
    }

    return const SizedBox.shrink();
  }
}
