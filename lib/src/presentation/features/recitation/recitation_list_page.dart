import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RecitationListPage extends StatefulWidget {
  const RecitationListPage({Key? key}) : super(key: key);

  @override
  State<RecitationListPage> createState() => _RecitationListPageState();
}

class _RecitationListPageState extends State<RecitationListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengumuman'),
        leading: IconButton(
          onPressed: AutoRouter.of(context).pop,
          icon: Icon(Icons.arrow_back, size: 24.sp),
        ),
      ),
      backgroundColor: GoColor.albin,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.all(16).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }
}
