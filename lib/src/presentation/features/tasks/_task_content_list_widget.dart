part of 'tasks_screen_page.dart';

class _TaskContentListWidget extends StatelessWidget {
  const _TaskContentListWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskListCubit, TaskListState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox.expand(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        return ListView.separated(
          itemCount: state.tasks.length,
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
          ),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              child: ListTile(
                title: Text(state.tasks[index].taskTitle),
                subtitle: Text(
                  state.tasks[index].taskDetail,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
