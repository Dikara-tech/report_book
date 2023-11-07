import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';
import 'package:report_book/src/presentation/features/profile/bloc/logout/logout_cubit.dart';
import 'package:report_book/src/presentation/features/profile/bloc/profile/profile_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book_core/report_book_core.dart';

part '_circle_image_profile_widget.dart';

part '_metric_student_task_widget.dart';

part '_text_email_widget.dart';

part '_text_parent_widget.dart';

part '_text_classname_widget.dart';

part '_text_name_widget.dart';

part '_logout_button_widget.dart';

@RoutePage()
class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({@QueryParam() this.isTeacherMenu = true});

  final bool isTeacherMenu;

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      drawer: isTeacherMenu ? const NavBarMenuTeacherWidget() : null,
      body: MultiProvider(
        providers: [
          BlocProvider(create: (context) => LogoutCubit.create()),
          BlocProvider(create: (context) => ProfileCubit.create()),
        ],
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: (sizeHeight - kToolbarHeight) * 0.4,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Center(
                    child: _CircleImageProfileWidget(),
                  ),
                ),
              ),
            ),
            SliverList.list(
              children: [
                const _TextEmailWidget(),
                const Divider(),
                const _TextNameWidget(),
                const Divider(),
                if (!isTeacherMenu) const _TextParentNameWidget(),
                const _TextClassNameWidget(),
                const _LogOutButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
