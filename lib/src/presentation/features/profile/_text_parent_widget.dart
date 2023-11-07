part of 'profile_screen_page.dart';

class _TextParentNameWidget extends StatelessWidget {
  const _TextParentNameWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text(
        'Parent Name',
        style: theme.textTheme.titleSmall,
      ),
      subtitle: BlocBuilder<ProfileCubit, ResourceState<UserModel>>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: (code, message, data) => Text(
            data.parent ?? 'No Parent Name',
            style: theme.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
