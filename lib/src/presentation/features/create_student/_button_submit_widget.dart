part of 'create_student_screen_page.dart';

class _ButtonSubmitWidget extends StatelessWidget {
  const _ButtonSubmitWidget({
    this.isRegister = true,
    this.idUser,
  });

  final bool isRegister;
  final String? idUser;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: BlocBuilder<InputStudentCubit, ResourceState<void>>(
        builder: (context, state) => state.maybeWhen(
            orElse: () => CustomButtonWidget(
                  titleButton:
                      isRegister ? 'Register Student' : 'Update Student',
                  onAction: () {
                    final registerProvider =
                        context.read<RegisterFormProvider>();
                    if (registerProvider.validateForm) {
                      final registerModel = UserModel(
                        id: idUser,
                        name: registerProvider.name,
                        userType: UserType.student,
                        createdAt: DateTime.now().millisecondsSinceEpoch,
                        email: registerProvider.email,
                      );
                      context.read<InputStudentCubit>().submit(registerModel);
                    }
                  },
                ),
            loading: (data) => const CustomButtonWidget(
                titleButton: 'Register Student', onAction: null)),
      ),
    );
  }
}
