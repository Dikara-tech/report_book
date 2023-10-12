import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AnnouncementScreenPage extends StatelessWidget {
  const AnnouncementScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annoucement'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          title: Text('Annoucement $index'),
          subtitle: Text('this is body'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
