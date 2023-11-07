part of 'profile_screen_page.dart';

class _TextNameWidget extends StatelessWidget {
  const _TextNameWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text('Name', style: theme.textTheme.titleSmall),
      subtitle: BlocBuilder<ProfileCubit, ResourceState<UserModel>>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: (code, message, data) => Text(
            data.name,
            style: theme.textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
