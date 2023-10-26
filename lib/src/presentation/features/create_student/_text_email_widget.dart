part of 'create_student_screen_page.dart';

class _TextEmailWidget extends StatelessWidget {
  const _TextEmailWidget();

  @override
  Widget build(BuildContext context) {
    final registerForm = context.watch<RegisterFormProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        textEditingController: TextEditingController(
          text: context.read<RegisterFormProvider>().email,
        ),
        hintText: 'Input Email Student',
        textInputType: TextInputType.emailAddress,
        errorText: registerForm.errorTextEmail,
        onChange: (value) => context.read<RegisterFormProvider>().email = value,
      ),
    );
  }
}
