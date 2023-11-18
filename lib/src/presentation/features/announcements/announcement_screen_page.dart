import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/announcements/bloc/announcements/announcements_cubit.dart';
import 'package:report_book/src/presentation/features/announcements/bloc/delete_announcement/delete_announcement_cubit.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';
import 'package:report_book/src/presentation/routers/router.dart';

@RoutePage()
class AnnouncementScreenPage extends StatefulWidget {
  const AnnouncementScreenPage({@QueryParam() this.isTeacher = true});

  final bool isTeacher;

  @override
  State<AnnouncementScreenPage> createState() => _AnnouncementScreenPageState();
}

class _AnnouncementScreenPageState extends State<AnnouncementScreenPage> {
  late final AnnouncementsCubit _announcementsCubit;
  late final DeleteAnnouncementCubit _deleteAnnouncementCubit;

  @override
  void initState() {
    super.initState();
    _announcementsCubit = AnnouncementsCubit.create();
    _deleteAnnouncementCubit = DeleteAnnouncementCubit.create();
    _announcementsCubit.getAnnouncements();
  }

  @override
  void dispose() {
    _announcementsCubit.close();
    _deleteAnnouncementCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Pengumuman')),
      drawer: widget.isTeacher ? const NavBarMenuTeacherWidget() : null,
      body: BlocProvider.value(
        value: _deleteAnnouncementCubit,
        child: BlocListener<DeleteAnnouncementCubit, ResourceState<void>>(
          bloc: _deleteAnnouncementCubit,
          listener: (context, state) => state.maybeWhen(
            orElse: () => null,
            success: (code, message, data) =>
                ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.black,
                content: Text(
                  'Success State',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          child: BlocBuilder<AnnouncementsCubit, AnnouncementsState>(
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
                    subtitle:
                        Text(state.announcements[index].detailAnnouncement),
                    trailing: _DeleteButton(
                      isTeacher: widget.isTeacher,
                      announcementID: state.announcements[index].announcementId,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: widget.isTeacher
          ? FloatingActionButton(
              heroTag: 'announcement',
              onPressed: () => AutoRouter.of(context)
                  .push(const CreateAnnouncementScreenRouter()),
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton({
    required this.isTeacher,
    this.announcementID,
  });

  final bool isTeacher;
  final String? announcementID;

  @override
  Widget build(BuildContext context) {
    if (isTeacher) {
      return GestureDetector(
        onTap: () {
          GoSimpleDialog.showDialog(
            context,
            title: 'Delete Announcement',
            message: 'will you delete announcement?',
            confirmText: 'Delete',
            onConfirm: () {
              final announcementId = announcementID;
              if (announcementId != null) {
                context
                    .read<DeleteAnnouncementCubit>()
                    .deleteAnnouncement(announcementId);
              }
            },
          );
        },
        child: const Icon(Icons.delete),
      );
    }

    return SizedBox.shrink();
  }
}
