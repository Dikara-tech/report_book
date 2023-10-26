import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dikara_core/dikara_core.dart'
    show ResourceError, ResourceState, ResourceInitial, ResourceLoading;

import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

class ContactListCubit extends Cubit<ResourceState<List<UserModel>>> {
  final UserRepository _userRepository;

  ContactListCubit(this._userRepository) : super(const ResourceInitial());

  factory ContactListCubit.create() => ContactListCubit(inject.get());

  Future<void> getRelationUser() async {
    try {
      emit(const ResourceLoading());
      final contactList = await _userRepository.contactListFromLocal();
      emit(ResourceState.success(data: contactList));
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
