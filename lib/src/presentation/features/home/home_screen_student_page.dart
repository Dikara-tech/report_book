import 'package:auto_route/auto_route.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/routers/router.dart';

@RoutePage()
class HomeScreenStudentPage extends StatelessWidget {
  const HomeScreenStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AutoTabsRouter(
      homeIndex: 0,
      routes: [
        AnnouncementScreenRouter(isTeacher: false),
        ChatScreenRouter(isTeacher: false),
        TaskScreenRouter(isTeacher: false),
        ProfileScreenRouter(isTeacherMenu: false)
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
              icon: Icon(Icons.notifications_outlined),
              label: 'Info',
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
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
