// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scores_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScoresListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<StudyModel> get scores => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoresListStateCopyWith<ScoresListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoresListStateCopyWith<$Res> {
  factory $ScoresListStateCopyWith(
          ScoresListState value, $Res Function(ScoresListState) then) =
      _$ScoresListStateCopyWithImpl<$Res, ScoresListState>;
  @useResult
  $Res call({bool isLoading, List<StudyModel> scores, bool isError});
}

/// @nodoc
class _$ScoresListStateCopyWithImpl<$Res, $Val extends ScoresListState>
    implements $ScoresListStateCopyWith<$Res> {
  _$ScoresListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scores = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<StudyModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoresListStateImplCopyWith<$Res>
    implements $ScoresListStateCopyWith<$Res> {
  factory _$$ScoresListStateImplCopyWith(_$ScoresListStateImpl value,
          $Res Function(_$ScoresListStateImpl) then) =
      __$$ScoresListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<StudyModel> scores, bool isError});
}

/// @nodoc
class __$$ScoresListStateImplCopyWithImpl<$Res>
    extends _$ScoresListStateCopyWithImpl<$Res, _$ScoresListStateImpl>
    implements _$$ScoresListStateImplCopyWith<$Res> {
  __$$ScoresListStateImplCopyWithImpl(
      _$ScoresListStateImpl _value, $Res Function(_$ScoresListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scores = null,
    Object? isError = null,
  }) {
    return _then(_$ScoresListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<StudyModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScoresListStateImpl implements _ScoresListState {
  const _$ScoresListStateImpl(
      {required this.isLoading,
      required final List<StudyModel> scores,
      required this.isError})
      : _scores = scores;

  @override
  final bool isLoading;
  final List<StudyModel> _scores;
  @override
  List<StudyModel> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'ScoresListState(isLoading: $isLoading, scores: $scores, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoresListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_scores), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoresListStateImplCopyWith<_$ScoresListStateImpl> get copyWith =>
      __$$ScoresListStateImplCopyWithImpl<_$ScoresListStateImpl>(
          this, _$identity);
}

abstract class _ScoresListState implements ScoresListState {
  const factory _ScoresListState(
      {required final bool isLoading,
      required final List<StudyModel> scores,
      required final bool isError}) = _$ScoresListStateImpl;

  @override
  bool get isLoading;
  @override
  List<StudyModel> get scores;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$ScoresListStateImplCopyWith<_$ScoresListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
