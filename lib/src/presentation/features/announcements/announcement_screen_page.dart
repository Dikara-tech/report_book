import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/announcements/bloc/announcements/announcements_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';

@RoutePage()
class AnnouncementScreenPage extends StatefulWidget {
  const AnnouncementScreenPage({super.key});

  @override
  State<AnnouncementScreenPage> createState() => _AnnouncementScreenPageState();
}

class _AnnouncementScreenPageState extends State<AnnouncementScreenPage> {
  late final AnnouncementsCubit _announcementsCubit;

  @override
  void initState() {
    super.initState();
    _announcementsCubit = AnnouncementsCubit.create();
    _announcementsCubit.getAnnouncements();
  }

  @override
  void dispose() {
    _announcementsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annoucements'),
      ),
      body: BlocBuilder<AnnouncementsCubit, AnnouncementsState>(
        bloc: _announcementsCubit,
        builder: (context, state) {
          if (state.isLoading) {
            return const SizedBox.expand(
              child: Center(child: CircularProgressIndicator()),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: state.announcements.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(state.announcements[index].title),
                subtitle: Text(state.announcements[index].detailAnnouncement),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'announcement',
        onPressed: () => AutoRouter.of(context)
            .push(const CreateAnnouncementScreenRouter()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
