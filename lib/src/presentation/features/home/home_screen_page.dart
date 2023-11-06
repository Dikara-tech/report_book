import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/features/home/provider/navbar_menu_teacher/navbar_menu_teacher_provider.dart';

@RoutePage()
class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavBarMenuProvider.create())
      ],
      child: const AutoRouter(),
    );
  }
}
