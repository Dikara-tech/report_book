part of 'chat_detail_screen_page.dart';

class _TextingWidget extends StatefulWidget {
  const _TextingWidget({super.key});

  @override
  State<_TextingWidget> createState() => _TextingWidgetState();
}

class _TextingWidgetState extends State<_TextingWidget> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final colorSchemeTheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: 50.0,
              child: CustomTextFieldWidget(
                hintText: 'Masukkan kata',
                textEditingController: _textEditingController,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context
                  .read<MessageCubit>()
                  .addMessage(_textEditingController.text);
              setState(() {
                _textEditingController.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: colorSchemeTheme.primary,
              foregroundColor: colorSchemeTheme.primaryContainer,
            ),
            child: const Icon(Icons.send, color: Colors.white,),
          )
        ],
      ),
    );
  }
}
