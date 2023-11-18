part of 'create_student_screen_page.dart';

class _ButtonSubmitWidget extends StatelessWidget {
  const _ButtonSubmitWidget({
    this.idUser,
    this.onTapAction,
  });

  final String? idUser;
  final VoidCallback? onTapAction;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: BlocBuilder<InputStudentCubit, ResourceState<void>>(
        builder: (context, state) => state.maybeWhen(
            orElse: () => CustomButtonWidget(
                titleButton:
                    idUser == null ? 'Daftarkan Siswa' : 'Ubah Data Siswa',
                onAction: onTapAction),
            loading: (data) => CustomButtonWidget(
                titleButton:
                    idUser == null ? 'Daftarkan Siswa' : 'Ubah Data Siswa',
                onAction: null)),
      ),
    );
  }
}
