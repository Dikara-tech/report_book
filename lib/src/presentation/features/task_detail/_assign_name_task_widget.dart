part of 'task_detail_screen_page.dart';


class _AssignNameTask extends StatelessWidget {
  const _AssignNameTask();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Name'),
      subtitle: BlocBuilder<ProfileNameCubit, ResourceState<String?>>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: (code, message, data) {
            final userName = data;
            if (userName != null) return Text(userName);
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
