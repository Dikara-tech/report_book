// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcements_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnouncementsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AnnouncementModel> get announcements =>
      throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementsStateCopyWith<AnnouncementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementsStateCopyWith<$Res> {
  factory $AnnouncementsStateCopyWith(
          AnnouncementsState value, $Res Function(AnnouncementsState) then) =
      _$AnnouncementsStateCopyWithImpl<$Res, AnnouncementsState>;
  @useResult
  $Res call(
      {bool isLoading, List<AnnouncementModel> announcements, bool isError});
}

/// @nodoc
class _$AnnouncementsStateCopyWithImpl<$Res, $Val extends AnnouncementsState>
    implements $AnnouncementsStateCopyWith<$Res> {
  _$AnnouncementsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? announcements = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      announcements: null == announcements
          ? _value.announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementsStateImplCopyWith<$Res>
    implements $AnnouncementsStateCopyWith<$Res> {
  factory _$$AnnouncementsStateImplCopyWith(_$AnnouncementsStateImpl value,
          $Res Function(_$AnnouncementsStateImpl) then) =
      __$$AnnouncementsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<AnnouncementModel> announcements, bool isError});
}

/// @nodoc
class __$$AnnouncementsStateImplCopyWithImpl<$Res>
    extends _$AnnouncementsStateCopyWithImpl<$Res, _$AnnouncementsStateImpl>
    implements _$$AnnouncementsStateImplCopyWith<$Res> {
  __$$AnnouncementsStateImplCopyWithImpl(_$AnnouncementsStateImpl _value,
      $Res Function(_$AnnouncementsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? announcements = null,
    Object? isError = null,
  }) {
    return _then(_$AnnouncementsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      announcements: null == announcements
          ? _value._announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AnnouncementsStateImpl implements _AnnouncementsState {
  const _$AnnouncementsStateImpl(
      {required this.isLoading,
      required final List<AnnouncementModel> announcements,
      required this.isError})
      : _announcements = announcements;

  @override
  final bool isLoading;
  final List<AnnouncementModel> _announcements;
  @override
  List<AnnouncementModel> get announcements {
    if (_announcements is EqualUnmodifiableListView) return _announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcements);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'AnnouncementsState(isLoading: $isLoading, announcements: $announcements, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._announcements, _announcements) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_announcements), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementsStateImplCopyWith<_$AnnouncementsStateImpl> get copyWith =>
      __$$AnnouncementsStateImplCopyWithImpl<_$AnnouncementsStateImpl>(
          this, _$identity);
}

abstract class _AnnouncementsState implements AnnouncementsState {
  const factory _AnnouncementsState(
      {required final bool isLoading,
      required final List<AnnouncementModel> announcements,
      required final bool isError}) = _$AnnouncementsStateImpl;

  @override
  bool get isLoading;
  @override
  List<AnnouncementModel> get announcements;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$AnnouncementsStateImplCopyWith<_$AnnouncementsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
