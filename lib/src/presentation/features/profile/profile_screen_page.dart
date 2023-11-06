import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';

part '_circle_image_profile_widget.dart';

part '_name_text_widget.dart';

part '_metric_student_task_widget.dart';

@RoutePage()
class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({
    @QueryParam() this.isTeacherMenu = true,
  });

  final bool isTeacherMenu;

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      drawer: isTeacherMenu ? const NavBarMenuTeacherWidget() : null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: (sizeHeight - kToolbarHeight) * 0.4,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _CircleImageProfileWidget(),
                  _ProfileNameWidget(text: 'lorem upsum'),
                  _MetricStudentTaskWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
