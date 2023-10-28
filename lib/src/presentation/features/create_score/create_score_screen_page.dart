import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/create_score/bloc/create_score_cubit.dart';
import 'package:report_book/src/presentation/features/create_score/provider/form_list_scores.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';
import 'package:report_book_core/report_book_core.dart';

part '_text_title_widget.dart';

part '_form_list_widget.dart';

part '_title_form_widget.dart';

part '_add_form_widget.dart';

part '_create_score_button_widget.dart';

@RoutePage()
class CreateScoreScreenPage extends StatefulWidget {
  const CreateScoreScreenPage({
    @PathParam() required this.studentId,
  });

  final String studentId;

  @override
  State<CreateScoreScreenPage> createState() => _CreateScoreScreenPageState();
}

class _CreateScoreScreenPageState extends State<CreateScoreScreenPage> {
  late final CreateScoreCubit _createScoreCubit;

  @override
  void initState() {
    super.initState();
    _createScoreCubit = CreateScoreCubit.create(widget.studentId);
  }

  @override
  void dispose() {
    _createScoreCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Score Student'),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => FormListScores()),
          BlocProvider.value(value: _createScoreCubit)
        ],
        child: BlocListener<CreateScoreCubit, ResourceState<void>>(
          bloc: _createScoreCubit,
          listener: (context, state) => state.maybeWhen(
            orElse: () => null,
            success: (code, message, data) => AutoRouter.of(context).pop(),
          ),
          child: ListView(
            children: const [
              _TitleFormWidget(),
              _FormListWidget(),
              _AddFormWidget(),
              _CreateScoreButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
