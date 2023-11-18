part of 'create_task_screen_page.dart';

class _TextFieldDetailTaskWidget extends StatefulWidget {
  const _TextFieldDetailTaskWidget();

  @override
  State<_TextFieldDetailTaskWidget> createState() =>
      _TextFieldDetailTaskWidgetState();
}

class _TextFieldDetailTaskWidgetState
    extends State<_TextFieldDetailTaskWidget> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textEditingController.text = context.read<TaskFormProvider>().value.detail;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomTextFieldWidget(
        textEditingController: _textEditingController,
        hintText: 'Detail Tugas',
        maxLines: 5,
        onChange: (value) {
          context.read<TaskFormProvider>().onChangeTaskDetail(value);
        },
      ),
    );
  }
}
