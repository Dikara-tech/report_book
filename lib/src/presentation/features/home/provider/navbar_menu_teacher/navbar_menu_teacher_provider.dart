import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navbar_menu_teacher_state.dart';

part 'navbar_menu_teacher_provider.freezed.dart';

class NavBarMenuProvider extends ValueNotifier<NavBarMenuState> {
  NavBarMenuProvider(super.value);

  factory NavBarMenuProvider.create() =>
      NavBarMenuProvider(const NavBarMenuState.student());

  void changeState(NavBarMenuState state) {
    value = state;
  }
}
