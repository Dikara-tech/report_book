import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/routers/router.dart';

@RoutePage()
class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AutoTabsRouter(
      routes: const [
        StudentsScreenRouter(),
        ChatScreenRouter(),
        TaskScreenRouter(),
        AnnouncementScreenRouter(),
        ProfileScreenRouter()
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) => Scaffold(
        body: child,
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (indexTab) =>
              AutoTabsRouter.of(context).setActiveIndex(indexTab),
          indicatorColor: theme.colorScheme.primary,
          selectedIndex: AutoTabsRouter.of(context).activeIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.school_outlined),
              label: 'Student',
            ),
            NavigationDestination(
              icon: Icon(Icons.message_outlined),
              label: 'Message',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Tasks',
            ),
            NavigationDestination(
              icon: Icon(Icons.notifications_outlined),
              label: 'Announcement',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
