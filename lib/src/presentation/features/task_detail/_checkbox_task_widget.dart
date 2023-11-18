part of 'task_detail_screen_page.dart';

class _CheckBoxTaskWidget extends StatelessWidget {
  const _CheckBoxTaskWidget();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.read<CheckBoxProvider>(),
      builder: (context, value, child) => CheckboxListTile(
        value: value,
        title: const Text('Tugas Selesai'),
        onChanged: (value) {
          context.read<CheckBoxProvider>().changeCheckBox(value ?? false);
        },
      ),
    );
  }
}
