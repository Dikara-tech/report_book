part of 'create_student_screen_page.dart';

class _ButtonSubmitWidget extends StatelessWidget {
  const _ButtonSubmitWidget();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: BlocBuilder<RegisterStudentCubit, ResourceState<void>>(
        builder: (context, state) => state.maybeWhen(
            orElse: () => CustomButtonWidget(
                  titleButton: 'Register Student',
                  onAction: () {
                    final registerProvider =
                        context.read<RegisterFormProvider>();
                    if (registerProvider.validateForm) {
                      final registerModel = UserModel(
                        name: registerProvider.name,
                        userType: UserType.student,
                        createdAt: DateTime.now().millisecondsSinceEpoch,
                        email: registerProvider.email,
                      );
                      context
                          .read<RegisterStudentCubit>()
                          .submit(registerModel);
                    }
                  },
                ),
            loading: (data) => const CustomButtonWidget(
                titleButton: 'Register Student', onAction: null)),
      ),
    );
  }
}
