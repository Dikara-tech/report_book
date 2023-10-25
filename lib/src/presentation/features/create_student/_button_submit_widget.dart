part of 'create_student_screen_page.dart';

class _ButtonSubmitWidget extends StatelessWidget {
  const _ButtonSubmitWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomButtonWidget(
        titleButton: 'Register Student',
        onAction: () {
          final registerProvider = context.read<RegisterFormProvider>();
          if (registerProvider.validateForm) {
            final registerModel = UserModel(
              name: registerProvider.name,
              userType: UserType.student,
              createdAt: DateTime.now().millisecondsSinceEpoch,
              email: registerProvider.email,
            );
            context.read<RegisterStudentBloc>().submit(registerModel);
          }
        },
      ),
    );
  }
}
