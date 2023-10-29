import 'package:auto_route/annotations.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/score_detail/bloc/score_detail_cubit.dart';
import 'package:report_book_core/report_book_core.dart';

part '_score_list_widget.dart';

@RoutePage()
class ScoreDetailScreenPage extends StatelessWidget {
  const ScoreDetailScreenPage({@PathParam() required this.scoreById});

  final String scoreById;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score Detail'),
      ),
      body: BlocProvider(
        create: (context) => ScoreDetailCubit.create(scoreById),
        child: const _ScoreListWidget(),
      ),
    );
  }
}
