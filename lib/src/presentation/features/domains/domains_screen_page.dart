import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/domains/bloc/domain_list/domain_list_cubit.dart';
import 'package:report_book_core/report_book_core.dart';

part '_domains_content_widget.dart';

@RoutePage()
class DomainsScreenPage extends StatelessWidget {
  const DomainsScreenPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Domains List'),
      ),
      body: BlocProvider(
        create: (context) => DomainListCubit.create(),
        child: const _DomainsContentWidget(),
      ),
    );
  }
}
