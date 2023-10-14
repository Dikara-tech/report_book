import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
