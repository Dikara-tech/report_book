import 'package:auto_route/annotations.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/chat_contact/bloc/contact_list/contact_list_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book_core/report_book_core.dart';

part '_chat_list_contact.dart';

part '_chat_card_widget.dart';

@RoutePage()
class ChatContactScreenPage extends StatelessWidget {
  const ChatContactScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cari Kontak'),
      ),
      body: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => ContactListCubit.create()..getRelationUser(),
        )
      ], child: const _ChatListContact()),
    );
  }
}
