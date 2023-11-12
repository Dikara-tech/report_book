part of 'create_task_screen_page.dart';

class _TextFieldAssignedTaskWidget extends StatefulWidget {
  const _TextFieldAssignedTaskWidget();

  @override
  State<_TextFieldAssignedTaskWidget> createState() =>
      _TextFieldAssignedTaskWidgetState();
}

class _TextFieldAssignedTaskWidgetState
    extends State<_TextFieldAssignedTaskWidget> {
  late final TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final assignName = context.read<TaskFormProvider>().value.assignName;
    if (assignName != null) textEditingController.text = assignName;
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Assign Task',
        textEditingController: textEditingController,
        isReadOnly: true,
        onTapTextField: () async {
          final user = await AutoRouter.of(context)
              .root
              .push(StudentsScreenRouter(isReadOnly: true));
          if (user != null && user is UserModel && mounted) {
            textEditingController.text = user.name;
            context
                .read<TaskFormProvider>()
                .changeAssignTask(user.id, user.name);
          }
        },
      ),
    );
  }
}
