import 'package:auto_route/auto_route.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/chat_detail/bloc/message/message_cubit.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

part '_message_list_widget.dart';

part '_message_card_sender_widget.dart';

part '_message_card_owner_widget.dart';

part '_texting_widget.dart';

@RoutePage()
class ChatDetailScreenPage extends StatefulWidget {
  const ChatDetailScreenPage({
    @PathParam() required this.senderId,
    @QueryParam() this.chatId,
    @QueryParam() this.senderName,
  });

  final String senderId;
  final String? chatId;
  final String? senderName;

  @override
  State<ChatDetailScreenPage> createState() => _ChatDetailScreenPageState();
}

class _ChatDetailScreenPageState extends State<ChatDetailScreenPage> {
  late final MessageCubit messageCubit;

  @override
  void initState() {
    super.initState();
    messageCubit = MessageCubit.create(widget.senderId, widget.chatId);
  }

  @override
  void dispose() {
    messageCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.senderName ?? 'No Name'),
      ),
      body: SafeArea(
        child: BlocProvider.value(
          value: messageCubit,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _MessageListWidget(senderId: widget.senderId),
              ),
              const _TextingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
