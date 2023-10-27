import 'package:auto_route/auto_route.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/create_announcement/bloc/create_announcement/crate_announcement_cubit.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

@RoutePage()
class CreateAnnouncementScreenPage extends StatefulWidget {
  const CreateAnnouncementScreenPage({super.key});

  @override
  State<CreateAnnouncementScreenPage> createState() =>
      _CreateAnnouncementScreenPageState();
}

class _CreateAnnouncementScreenPageState
    extends State<CreateAnnouncementScreenPage> {
  late final TextEditingController _titleEditController;
  late final TextEditingController _announcementEditController;
  late final CrateAnnouncementCubit _crateAnnouncementCubit;

  @override
  void initState() {
    super.initState();
    _titleEditController = TextEditingController();
    _announcementEditController = TextEditingController();
    _crateAnnouncementCubit = CrateAnnouncementCubit.create();
  }

  @override
  void dispose() {
    _titleEditController.dispose();
    _announcementEditController.dispose();
    _crateAnnouncementCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Annoucement Detail')),
      body: BlocListener<CrateAnnouncementCubit, ResourceState<void>>(
        bloc: _crateAnnouncementCubit,
        listener: (context, state) => state.when(
          loading: (data) => null,
          success: (code, message, data) => AutoRouter.of(context).pop(),
          error: (code, message, stacktrace, data) => SnackBar(
            backgroundColor: Colors.black,
            content: Text(
              'Failed create user',
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          initial: () => null,
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextFieldWidget(
                textEditingController: _titleEditController,
                hintText: 'Title Annoucement',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: CustomTextFieldWidget(
                textEditingController: _announcementEditController,
                hintText: 'Detail Annoucement',
                maxLines: 5,
              ),
            ),
            SizedBox(
              width: width,
              child: CustomButtonWidget(
                titleButton: 'Create Announcement',
                onAction: () {
                  _crateAnnouncementCubit.createAnnouncement(
                    _titleEditController.text,
                    _announcementEditController.text,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
