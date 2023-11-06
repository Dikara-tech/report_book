import 'dart:async';

import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/routers/router.dart';

class NavBarMenuTeacherWidget extends StatefulWidget {
  const NavBarMenuTeacherWidget({super.key});

  @override
  State<NavBarMenuTeacherWidget> createState() =>
      _NavBarMenuTeacherWidgetState();
}

class _NavBarMenuTeacherWidgetState extends State<NavBarMenuTeacherWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.colorScheme.background,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.school_outlined),
            title: const Text('Student'),
            onTap: () async {
              await AutoRouter.of(context).pop();
              if (mounted) {
                unawaited(AutoRouter.of(context).replace(StudentsScreenRouter()));
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Report task'),
            onTap: () async {
              await AutoRouter.of(context).pop();
              if (mounted) {
                unawaited(
                    AutoRouter.of(context).replace(const ReportScreenRouter()));
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.message_outlined),
            title: const Text('Message'),
            onTap: () async {
              await AutoRouter.of(context).pop();
              if (mounted) {
                unawaited(
                    AutoRouter.of(context).replace(ChatScreenRouter()));
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month_outlined),
            title: const Text('Tasks'),
            onTap: () async {
              await AutoRouter.of(context).pop();
              if (mounted) {
                unawaited(AutoRouter.of(context).replace(TaskScreenRouter()));
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Announcement'),
            onTap: () async {
              await AutoRouter.of(context).pop();
              if (mounted) {
                unawaited(
                    AutoRouter.of(context).replace(AnnouncementScreenRouter()));
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.school_outlined),
            title: const Text('Profile'),
            onTap: () async {
              await AutoRouter.of(context).pop();
              if (mounted) {
                unawaited(
                    AutoRouter.of(context).replace(ProfileScreenRouter()));
              }
            },
          ),
        ],
      ),
    );
  }
}
