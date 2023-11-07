part of 'profile_screen_page.dart';

class _TextEmailWidget extends StatelessWidget {
  const _TextEmailWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text('Email', style: theme.textTheme.titleSmall),
      subtitle: BlocBuilder<ProfileCubit, ResourceState<UserModel>>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: (code, message, data) => Text(data.email,
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
