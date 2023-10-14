import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatScreenPage extends StatelessWidget {
  const ChatScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Card(
              child: ListTile(
                title: Text('Name: $index'),
                subtitle: const Text('this is body'),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message_outlined),
      ),
    );
  }
}
