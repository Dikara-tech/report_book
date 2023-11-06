part of 'student_screen_page.dart';

class _StudentListWidget extends StatelessWidget {
  _StudentListWidget({this.isReadOnly = false});

  final bool isReadOnly;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ResourceState<List<UserModel>>>(
      initialData: const ResourceState.loading(),
      stream: context.read<StudentListBloc>().watchState(),
      builder: (context, snapshot) {
        final state = snapshot.data;
        if (state != null) {
          return state.maybeWhen(
            orElse: () => const GoLoadingWidget(),
            success: (code, message, data) => ListView.separated(
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) => ListTile(
                title: Text(data[index].name),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  if (isReadOnly) {
                    AutoRouter.of(context).pop(data[index]);
                  } else {
                    AutoRouter.of(context).push(
                      CreateStudentScreenRouter(
                        userId: data[index].id,
                        name: data[index].name,
                        email: data[index].email,
                      ),
                    );
                  }
                },
              ),
            ),
          );
        }

        return const GoLoadingWidget();
      },
    );
  }
}
