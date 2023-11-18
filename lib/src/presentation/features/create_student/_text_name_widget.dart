part of 'create_student_screen_page.dart';

class _TextNameWidget extends StatefulWidget {
  const _TextNameWidget();

  @override
  State<_TextNameWidget> createState() => _TextNameWidgetState();
}

class _TextNameWidgetState extends State<_TextNameWidget> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textEditingController.text =
        context.read<RegisterFormProvider>().userModel.name;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registerForm = context.watch<RegisterFormProvider>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomTextFieldWidget(
        textEditingController: _textEditingController,
        hintText: 'Masukkan Nama',
        errorText: registerForm.errorText,
        onChange: (value) {
          _textEditingController.text = value;
          context.read<RegisterFormProvider>().changeName(value);
        },
      ),
    );
  }
}
