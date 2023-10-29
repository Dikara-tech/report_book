part of 'scores_screen_page.dart';

class _FabButtonWidget extends StatelessWidget {
  const _FabButtonWidget({
    required this.isTeacher,
    required this.studentId,
  });

  final bool isTeacher;
  final String studentId;

  @override
  Widget build(BuildContext context) {
    if (isTeacher) {
      return FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          AutoRouter.of(context)
              .push(CreateScoreScreenRouter(studentId: studentId));
        },
      );
    }

    return const SizedBox.shrink();
  }
}
