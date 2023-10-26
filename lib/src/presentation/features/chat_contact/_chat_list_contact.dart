part of 'chat_contact_screen_page.dart';

class _ChatListContact extends StatelessWidget {
  const _ChatListContact({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactListCubit, ResourceState<List<UserModel>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const GoLoadingWidget(),
        success: (code, message, data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => _ChatCardWidget(
            name: data[index].name,
            onAction: () {
              final userId = data[index].id;
              if (userId != null) {
                AutoRouter.of(context).replace(
                  ChatDetailScreenRouter(
                    senderId: userId,
                    senderName: data[index].name,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
