import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';

part '_circle_image_profile_widget.dart';

@RoutePage()
class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      drawer: const NavBarMenuTeacherWidget(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _CircleImageProfileWidget(),
        ],
      ),
    );
  }
}
