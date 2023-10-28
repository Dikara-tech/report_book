part of 'student_screen_page.dart';

class _StudentListWidget extends StatelessWidget {
  const _StudentListWidget();

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
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                    child: ListTile(
                  title: Text(data[index].name),
                  trailing: IconButton(
                    onPressed: () {
                      AutoRouter.of(context).push(
                        CreateStudentScreenRouter(
                          isRegisterPage: false,
                          userId: data[index].id,
                          name: data[index].name,
                          email: data[index].email,
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.redAccent,
                    ),
                  ),
                  onTap: () {
                    final studentId = data[index].id;
                    if (studentId != null) {
                      AutoRouter.of(context).push(ScoresScreenRouter(
                        studentId: studentId,
                        nameStudent: data[index].name,
                        isTeacher: true
                      ));
                    }
                  },
                )),
              ),
            ),
          );
        }

        return const GoLoadingWidget();
      },
    );
  }
}
