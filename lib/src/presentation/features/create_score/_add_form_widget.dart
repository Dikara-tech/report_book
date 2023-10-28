part of 'create_score_screen_page.dart';

class _AddFormWidget extends StatefulWidget {
  const _AddFormWidget();

  @override
  State<_AddFormWidget> createState() => _AddFormWidgetState();
}

class _AddFormWidgetState extends State<_AddFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(children: [
        OutlinedButton(
          onPressed: () async {
            final domainModel =
                await AutoRouter.of(context).push(const DomainsScreenRouter());
            if (domainModel != null) {
              if (mounted && domainModel is DomainsModel) {
                context.read<FormListScores>().onAddItem(
                      ScoreModel(studyTitle: domainModel.name, score: 0, idKey: domainModel.domainId),
                    );
              }
            }
          },
          child: const Text('Add Score'),
        ),
      ]),
    );
  }
}
