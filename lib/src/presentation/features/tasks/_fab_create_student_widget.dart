part of 'tasks_screen_page.dart';

class _FabCreateStudentWidget extends StatelessWidget {
  const _FabCreateStudentWidget({this.isEnableCreateAndEdit = false});

  final bool isEnableCreateAndEdit;

  @override
  Widget build(BuildContext context) {
    if (isEnableCreateAndEdit) {
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
