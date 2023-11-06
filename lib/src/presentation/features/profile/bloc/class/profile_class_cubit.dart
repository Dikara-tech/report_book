import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class ProfileClassCubit extends Cubit<ResourceState<String>> {
  final UserRepository userRepository;

  ProfileClassCubit(this.userRepository) : super(const ResourceState.initial());

  factory ProfileClassCubit.create() => ProfileClassCubit(inject.get());

  factory ProfileClassCubit.createStudent() => ProfileClassCubit(inject.get());
}
