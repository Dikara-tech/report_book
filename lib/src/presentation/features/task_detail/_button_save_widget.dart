part of 'task_detail_screen_page.dart';

class _ButtonSaveWidget extends StatelessWidget {
  const _ButtonSaveWidget({required this.taskTypeModel});

  final TaskTypeModel taskTypeModel;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: BlocBuilder<EditTaskCubit, ResourceState<void>>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => CustomButtonWidget(
            titleButton: 'Update Task',
            onAction: () {
              final checkBox = context.read<CheckBoxProvider>().value;
              context
                  .read<EditTaskCubit>()
                  .changeStatusTask(checkBox, taskTypeModel);
            },
          ),
          loading: (data) => const CustomButtonWidget(
            titleButton: 'Update Task',
            onAction: null,
          ),
        ),
      ),
    );
  }
}
