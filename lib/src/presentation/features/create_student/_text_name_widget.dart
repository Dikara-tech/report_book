part of 'create_student_screen_page.dart';

class _TextNameWidget extends StatelessWidget {
  const _TextNameWidget();

  @override
  Widget build(BuildContext context) {
    final registerForm = context.watch<RegisterFormProvider>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomTextFieldWidget(
        textEditingController: TextEditingController(
          text: context.read<RegisterFormProvider>().name,
        ),
        hintText: 'Input Name',
        errorText: registerForm.errorText,
        onChange: (value) => context.read<RegisterFormProvider>().name = value,
      ),
    );
  }
}
