import 'package:auto_route/auto_route.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/chats/bloc/chats/chats_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';


part '_chat_contents_widget.dart';

part '_chat_card_widget.dart';

@RoutePage()
class ChatScreenPage extends StatelessWidget {
  const ChatScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ChatsCubit.create()),
        ],
        child: const _ChatContentsWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'chat',
        onPressed: () =>
            AutoRouter.of(context).push(const ChatContactScreenRouter()),
        child: const Icon(Icons.message_outlined),
      ),
    );
  }
}
