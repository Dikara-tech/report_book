part of 'domains_screen_page.dart';

class _DomainsContentWidget extends StatelessWidget {
  const _DomainsContentWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DomainListCubit, ResourceState<List<DomainsModel>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loading: (data) => const SizedBox.expand(
            child: Center(
          child: CircularProgressIndicator(),
        )),
        success: (code, message, data) => ListView.separated(
          itemCount: data.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) => ListTile(
            title: Text(data[index].name),
            onTap: () => AutoRouter.of(context).pop(data[index]),
          ),
        ),
      ),
    );
  }
}
