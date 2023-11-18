part of 'create_task_screen_page.dart';

class _TextFieldTitleWidget extends StatefulWidget {
  const _TextFieldTitleWidget();

  @override
  State<_TextFieldTitleWidget> createState() => _TextFieldTitleWidgetState();
}

class _TextFieldTitleWidgetState extends State<_TextFieldTitleWidget> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textEditingController.text = context.read<TaskFormProvider>().value.title;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        textEditingController: _textEditingController,
        hintText: 'Judul Tugas',
        onChange: (value) {
          context.read<TaskFormProvider>().onChangeTaskTitle(value);
        },
      ),
    );
  }
}
