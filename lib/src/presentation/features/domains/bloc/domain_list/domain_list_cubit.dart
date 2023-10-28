import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class DomainListCubit extends Cubit<ResourceState<List<DomainsModel>>> {
  final DomainsRepository _domainsRepository;

  DomainListCubit(this._domainsRepository)
      : super(const ResourceState.initial());

  factory DomainListCubit.create() => DomainListCubit(inject.get())..getDomain();

  Future<void> getDomain() async {
    try {
      emit(const ResourceLoading());
      final domains = await _domainsRepository.getDomains();
      emit(ResourceSuccess(data: domains));
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
