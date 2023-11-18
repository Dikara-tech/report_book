part of 'create_student_screen_page.dart';

class _TextEmailWidget extends StatefulWidget {
  const _TextEmailWidget();

  @override
  State<_TextEmailWidget> createState() => _TextEmailWidgetState();
}

class _TextEmailWidgetState extends State<_TextEmailWidget> {
  late final TextEditingController _textEditingController;
  bool _disableEmail = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final email = context.read<RegisterFormProvider>().userModel.email;
    _textEditingController.text = email;
    _disableEmail = email.isNotEmpty;
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
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        textEditingController: _textEditingController,
        hintText: 'Masukkan email siswa',
        textInputType: TextInputType.emailAddress,
        errorText: registerForm.errorTextEmail,
        isReadOnly: _disableEmail,
        onChange: !_disableEmail
            ? (value) {
                _textEditingController.text = value;
                context.read<RegisterFormProvider>().changeEmail(value);
              }
            : null,
      ),
    );
  }
}
