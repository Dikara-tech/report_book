import 'package:bloc/bloc.dart';
import 'package:dikara_core/dikara_core.dart';

class DeleteTaskCubit extends Cubit<ResourceState<void>> {
  DeleteTaskCubit() : super(const ResourceState.initial());
}
