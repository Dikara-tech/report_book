// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<ScoreModel> get scores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportsStateCopyWith<ReportsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsStateCopyWith<$Res> {
  factory $ReportsStateCopyWith(
          ReportsState value, $Res Function(ReportsState) then) =
      _$ReportsStateCopyWithImpl<$Res, ReportsState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<ScoreModel> scores});
}

/// @nodoc
class _$ReportsStateCopyWithImpl<$Res, $Val extends ReportsState>
    implements $ReportsStateCopyWith<$Res> {
  _$ReportsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<ScoreModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportsStateImplCopyWith<$Res>
    implements $ReportsStateCopyWith<$Res> {
  factory _$$ReportsStateImplCopyWith(
          _$ReportsStateImpl value, $Res Function(_$ReportsStateImpl) then) =
      __$$ReportsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<ScoreModel> scores});
}

/// @nodoc
class __$$ReportsStateImplCopyWithImpl<$Res>
    extends _$ReportsStateCopyWithImpl<$Res, _$ReportsStateImpl>
    implements _$$ReportsStateImplCopyWith<$Res> {
  __$$ReportsStateImplCopyWithImpl(
      _$ReportsStateImpl _value, $Res Function(_$ReportsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? scores = null,
  }) {
    return _then(_$ReportsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<ScoreModel>,
    ));
  }
}

/// @nodoc

class _$ReportsStateImpl implements _ReportsState {
  const _$ReportsStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<ScoreModel> scores})
      : _scores = scores;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<ScoreModel> _scores;
  @override
  List<ScoreModel> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'ReportsState(isLoading: $isLoading, isError: $isError, scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportsStateImplCopyWith<_$ReportsStateImpl> get copyWith =>
      __$$ReportsStateImplCopyWithImpl<_$ReportsStateImpl>(this, _$identity);
}

abstract class _ReportsState implements ReportsState {
  const factory _ReportsState(
      {required final bool isLoading,
      required final bool isError,
      required final List<ScoreModel> scores}) = _$ReportsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<ScoreModel> get scores;
  @override
  @JsonKey(ignore: true)
  _$$ReportsStateImplCopyWith<_$ReportsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
