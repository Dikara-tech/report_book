import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';
import 'package:report_book/src/presentation/features/reports/bloc/reports_list/reports_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book_core/report_book_core.dart';

part '_report_tasks_widget.dart';

@RoutePage()
class ReportScreenPage extends StatelessWidget {
  const ReportScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Report')),
      drawer: const NavBarMenuTeacherWidget(),
      body: BlocProvider(
        create: (context) => ReportsCubit.create(),
        child: const _ReportTasksWidget(),
      ),
    );
  }
}
