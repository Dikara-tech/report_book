import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

part '_textfield_detail_announcement_widget.dart';

part '_button_create_widget.dart';

part '_textfield_title_widget.dart';

@RoutePage()
class CreateAnnouncementScreenPage extends StatelessWidget {
  const CreateAnnouncementScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Annoucement Detail')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: const [
                _TextFieldTitleWidget(),
                _TextFieldDetailAnnouncementWidget()
              ],
            ),
          ),
          const _ButtonCreateWidget()
        ],
      ),
    );
  }
}
