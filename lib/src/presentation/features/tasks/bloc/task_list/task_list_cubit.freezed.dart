// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res, TaskListState>;
  @useResult
  $Res call({bool isLoading, List<TaskModel> tasks, bool isError});
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? tasks = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskListStateImplCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$TaskListStateImplCopyWith(
          _$TaskListStateImpl value, $Res Function(_$TaskListStateImpl) then) =
      __$$TaskListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<TaskModel> tasks, bool isError});
}

/// @nodoc
class __$$TaskListStateImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListStateImpl>
    implements _$$TaskListStateImplCopyWith<$Res> {
  __$$TaskListStateImplCopyWithImpl(
      _$TaskListStateImpl _value, $Res Function(_$TaskListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? tasks = null,
    Object? isError = null,
  }) {
    return _then(_$TaskListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskListStateImpl implements _TaskListState {
  const _$TaskListStateImpl(
      {required this.isLoading,
      required final List<TaskModel> tasks,
      required this.isError})
      : _tasks = tasks;

  @override
  final bool isLoading;
  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'TaskListState(isLoading: $isLoading, tasks: $tasks, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_tasks), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListStateImplCopyWith<_$TaskListStateImpl> get copyWith =>
      __$$TaskListStateImplCopyWithImpl<_$TaskListStateImpl>(this, _$identity);
}

abstract class _TaskListState implements TaskListState {
  const factory _TaskListState(
      {required final bool isLoading,
      required final List<TaskModel> tasks,
      required final bool isError}) = _$TaskListStateImpl;

  @override
  bool get isLoading;
  @override
  List<TaskModel> get tasks;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$TaskListStateImplCopyWith<_$TaskListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
