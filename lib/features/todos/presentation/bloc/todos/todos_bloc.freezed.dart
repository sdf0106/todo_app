// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosEventTearOff {
  const _$TodosEventTearOff();

  _AddTask addTask({required Todo todo}) {
    return _AddTask(
      todo: todo,
    );
  }

  _GetAllTasks getAllTasks() {
    return const _GetAllTasks();
  }

  _TaskIsDone taskIsDone({required String id, required bool status}) {
    return _TaskIsDone(
      id: id,
      status: status,
    );
  }

  _TaskIsReminded taskIsReminded({required String id, required bool status}) {
    return _TaskIsReminded(
      id: id,
      status: status,
    );
  }

  _CloseReminderBox closeReminderBox() {
    return const _CloseReminderBox();
  }
}

/// @nodoc
const $TodosEvent = _$TodosEventTearOff();

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTask,
    required TResult Function() getAllTasks,
    required TResult Function(String id, bool status) taskIsDone,
    required TResult Function(String id, bool status) taskIsReminded,
    required TResult Function() closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_TaskIsDone value) taskIsDone,
    required TResult Function(_TaskIsReminded value) taskIsReminded,
    required TResult Function(_CloseReminderBox value) closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res> implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  final TodosEvent _value;
  // ignore: unused_field
  final $Res Function(TodosEvent) _then;
}

/// @nodoc
abstract class _$AddTaskCopyWith<$Res> {
  factory _$AddTaskCopyWith(_AddTask value, $Res Function(_AddTask) then) =
      __$AddTaskCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class __$AddTaskCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$AddTaskCopyWith<$Res> {
  __$AddTaskCopyWithImpl(_AddTask _value, $Res Function(_AddTask) _then)
      : super(_value, (v) => _then(v as _AddTask));

  @override
  _AddTask get _value => super._value as _AddTask;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_AddTask(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_AddTask with DiagnosticableTreeMixin implements _AddTask {
  const _$_AddTask({required this.todo});

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.addTask(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosEvent.addTask'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTask &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$AddTaskCopyWith<_AddTask> get copyWith =>
      __$AddTaskCopyWithImpl<_AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTask,
    required TResult Function() getAllTasks,
    required TResult Function(String id, bool status) taskIsDone,
    required TResult Function(String id, bool status) taskIsReminded,
    required TResult Function() closeReminderBox,
  }) {
    return addTask(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
  }) {
    return addTask?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_TaskIsDone value) taskIsDone,
    required TResult Function(_TaskIsReminded value) taskIsReminded,
    required TResult Function(_CloseReminderBox value) closeReminderBox,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TodosEvent {
  const factory _AddTask({required Todo todo}) = _$_AddTask;

  Todo get todo;
  @JsonKey(ignore: true)
  _$AddTaskCopyWith<_AddTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetAllTasksCopyWith<$Res> {
  factory _$GetAllTasksCopyWith(
          _GetAllTasks value, $Res Function(_GetAllTasks) then) =
      __$GetAllTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllTasksCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$GetAllTasksCopyWith<$Res> {
  __$GetAllTasksCopyWithImpl(
      _GetAllTasks _value, $Res Function(_GetAllTasks) _then)
      : super(_value, (v) => _then(v as _GetAllTasks));

  @override
  _GetAllTasks get _value => super._value as _GetAllTasks;
}

/// @nodoc

class _$_GetAllTasks with DiagnosticableTreeMixin implements _GetAllTasks {
  const _$_GetAllTasks();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.getAllTasks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodosEvent.getAllTasks'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAllTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTask,
    required TResult Function() getAllTasks,
    required TResult Function(String id, bool status) taskIsDone,
    required TResult Function(String id, bool status) taskIsReminded,
    required TResult Function() closeReminderBox,
  }) {
    return getAllTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
  }) {
    return getAllTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_TaskIsDone value) taskIsDone,
    required TResult Function(_TaskIsReminded value) taskIsReminded,
    required TResult Function(_CloseReminderBox value) closeReminderBox,
  }) {
    return getAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
  }) {
    return getAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks(this);
    }
    return orElse();
  }
}

abstract class _GetAllTasks implements TodosEvent {
  const factory _GetAllTasks() = _$_GetAllTasks;
}

/// @nodoc
abstract class _$TaskIsDoneCopyWith<$Res> {
  factory _$TaskIsDoneCopyWith(
          _TaskIsDone value, $Res Function(_TaskIsDone) then) =
      __$TaskIsDoneCopyWithImpl<$Res>;
  $Res call({String id, bool status});
}

/// @nodoc
class __$TaskIsDoneCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$TaskIsDoneCopyWith<$Res> {
  __$TaskIsDoneCopyWithImpl(
      _TaskIsDone _value, $Res Function(_TaskIsDone) _then)
      : super(_value, (v) => _then(v as _TaskIsDone));

  @override
  _TaskIsDone get _value => super._value as _TaskIsDone;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_TaskIsDone(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskIsDone with DiagnosticableTreeMixin implements _TaskIsDone {
  const _$_TaskIsDone({required this.id, required this.status});

  @override
  final String id;
  @override
  final bool status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.taskIsDone(id: $id, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosEvent.taskIsDone'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskIsDone &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$TaskIsDoneCopyWith<_TaskIsDone> get copyWith =>
      __$TaskIsDoneCopyWithImpl<_TaskIsDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTask,
    required TResult Function() getAllTasks,
    required TResult Function(String id, bool status) taskIsDone,
    required TResult Function(String id, bool status) taskIsReminded,
    required TResult Function() closeReminderBox,
  }) {
    return taskIsDone(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
  }) {
    return taskIsDone?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskIsDone != null) {
      return taskIsDone(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_TaskIsDone value) taskIsDone,
    required TResult Function(_TaskIsReminded value) taskIsReminded,
    required TResult Function(_CloseReminderBox value) closeReminderBox,
  }) {
    return taskIsDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
  }) {
    return taskIsDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskIsDone != null) {
      return taskIsDone(this);
    }
    return orElse();
  }
}

abstract class _TaskIsDone implements TodosEvent {
  const factory _TaskIsDone({required String id, required bool status}) =
      _$_TaskIsDone;

  String get id;
  bool get status;
  @JsonKey(ignore: true)
  _$TaskIsDoneCopyWith<_TaskIsDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TaskIsRemindedCopyWith<$Res> {
  factory _$TaskIsRemindedCopyWith(
          _TaskIsReminded value, $Res Function(_TaskIsReminded) then) =
      __$TaskIsRemindedCopyWithImpl<$Res>;
  $Res call({String id, bool status});
}

/// @nodoc
class __$TaskIsRemindedCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$TaskIsRemindedCopyWith<$Res> {
  __$TaskIsRemindedCopyWithImpl(
      _TaskIsReminded _value, $Res Function(_TaskIsReminded) _then)
      : super(_value, (v) => _then(v as _TaskIsReminded));

  @override
  _TaskIsReminded get _value => super._value as _TaskIsReminded;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_TaskIsReminded(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskIsReminded
    with DiagnosticableTreeMixin
    implements _TaskIsReminded {
  const _$_TaskIsReminded({required this.id, required this.status});

  @override
  final String id;
  @override
  final bool status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.taskIsReminded(id: $id, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosEvent.taskIsReminded'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskIsReminded &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$TaskIsRemindedCopyWith<_TaskIsReminded> get copyWith =>
      __$TaskIsRemindedCopyWithImpl<_TaskIsReminded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTask,
    required TResult Function() getAllTasks,
    required TResult Function(String id, bool status) taskIsDone,
    required TResult Function(String id, bool status) taskIsReminded,
    required TResult Function() closeReminderBox,
  }) {
    return taskIsReminded(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
  }) {
    return taskIsReminded?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskIsReminded != null) {
      return taskIsReminded(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_TaskIsDone value) taskIsDone,
    required TResult Function(_TaskIsReminded value) taskIsReminded,
    required TResult Function(_CloseReminderBox value) closeReminderBox,
  }) {
    return taskIsReminded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
  }) {
    return taskIsReminded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskIsReminded != null) {
      return taskIsReminded(this);
    }
    return orElse();
  }
}

abstract class _TaskIsReminded implements TodosEvent {
  const factory _TaskIsReminded({required String id, required bool status}) =
      _$_TaskIsReminded;

  String get id;
  bool get status;
  @JsonKey(ignore: true)
  _$TaskIsRemindedCopyWith<_TaskIsReminded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CloseReminderBoxCopyWith<$Res> {
  factory _$CloseReminderBoxCopyWith(
          _CloseReminderBox value, $Res Function(_CloseReminderBox) then) =
      __$CloseReminderBoxCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseReminderBoxCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res>
    implements _$CloseReminderBoxCopyWith<$Res> {
  __$CloseReminderBoxCopyWithImpl(
      _CloseReminderBox _value, $Res Function(_CloseReminderBox) _then)
      : super(_value, (v) => _then(v as _CloseReminderBox));

  @override
  _CloseReminderBox get _value => super._value as _CloseReminderBox;
}

/// @nodoc

class _$_CloseReminderBox
    with DiagnosticableTreeMixin
    implements _CloseReminderBox {
  const _$_CloseReminderBox();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.closeReminderBox()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodosEvent.closeReminderBox'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CloseReminderBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTask,
    required TResult Function() getAllTasks,
    required TResult Function(String id, bool status) taskIsDone,
    required TResult Function(String id, bool status) taskIsReminded,
    required TResult Function() closeReminderBox,
  }) {
    return closeReminderBox();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
  }) {
    return closeReminderBox?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTask,
    TResult Function()? getAllTasks,
    TResult Function(String id, bool status)? taskIsDone,
    TResult Function(String id, bool status)? taskIsReminded,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (closeReminderBox != null) {
      return closeReminderBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_TaskIsDone value) taskIsDone,
    required TResult Function(_TaskIsReminded value) taskIsReminded,
    required TResult Function(_CloseReminderBox value) closeReminderBox,
  }) {
    return closeReminderBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
  }) {
    return closeReminderBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_TaskIsDone value)? taskIsDone,
    TResult Function(_TaskIsReminded value)? taskIsReminded,
    TResult Function(_CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (closeReminderBox != null) {
      return closeReminderBox(this);
    }
    return orElse();
  }
}

abstract class _CloseReminderBox implements TodosEvent {
  const factory _CloseReminderBox() = _$_CloseReminderBox;
}

/// @nodoc
class _$TodosStateTearOff {
  const _$TodosStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded({required List<Todo> tasks, required String message}) {
    return Loaded(
      tasks: tasks,
      message: message,
    );
  }

  TaskAdded taskAdded({required String message}) {
    return TaskAdded(
      message: message,
    );
  }

  TaskStatusChanged taskStatusChanged({required String message}) {
    return TaskStatusChanged(
      message: message,
    );
  }

  Failure failure(String error) {
    return Failure(
      error,
    );
  }

  EmptyList emptyList() {
    return const EmptyList();
  }

  CloseReminderBox closeReminderBox() {
    return const CloseReminderBox();
  }
}

/// @nodoc
const $TodosState = _$TodosStateTearOff();

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodosState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodosState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodosState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TodosState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Todo> tasks, String message});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? message = freezed,
  }) {
    return _then(Loaded(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded({required this.tasks, required this.message});

  @override
  final List<Todo> tasks;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.loaded(tasks: $tasks, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosState.loaded'))
      ..add(DiagnosticsProperty('tasks', tasks))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            const DeepCollectionEquality().equals(other.tasks, tasks) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tasks),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return loaded(tasks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return loaded?.call(tasks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements TodosState {
  const factory Loaded({required List<Todo> tasks, required String message}) =
      _$Loaded;

  List<Todo> get tasks;
  String get message;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskAddedCopyWith<$Res> {
  factory $TaskAddedCopyWith(TaskAdded value, $Res Function(TaskAdded) then) =
      _$TaskAddedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$TaskAddedCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $TaskAddedCopyWith<$Res> {
  _$TaskAddedCopyWithImpl(TaskAdded _value, $Res Function(TaskAdded) _then)
      : super(_value, (v) => _then(v as TaskAdded));

  @override
  TaskAdded get _value => super._value as TaskAdded;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TaskAdded(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskAdded with DiagnosticableTreeMixin implements TaskAdded {
  const _$TaskAdded({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.taskAdded(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosState.taskAdded'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskAdded &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $TaskAddedCopyWith<TaskAdded> get copyWith =>
      _$TaskAddedCopyWithImpl<TaskAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return taskAdded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return taskAdded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return taskAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return taskAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded(this);
    }
    return orElse();
  }
}

abstract class TaskAdded implements TodosState {
  const factory TaskAdded({required String message}) = _$TaskAdded;

  String get message;
  @JsonKey(ignore: true)
  $TaskAddedCopyWith<TaskAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStatusChangedCopyWith<$Res> {
  factory $TaskStatusChangedCopyWith(
          TaskStatusChanged value, $Res Function(TaskStatusChanged) then) =
      _$TaskStatusChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$TaskStatusChangedCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res>
    implements $TaskStatusChangedCopyWith<$Res> {
  _$TaskStatusChangedCopyWithImpl(
      TaskStatusChanged _value, $Res Function(TaskStatusChanged) _then)
      : super(_value, (v) => _then(v as TaskStatusChanged));

  @override
  TaskStatusChanged get _value => super._value as TaskStatusChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TaskStatusChanged(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskStatusChanged
    with DiagnosticableTreeMixin
    implements TaskStatusChanged {
  const _$TaskStatusChanged({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.taskStatusChanged(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosState.taskStatusChanged'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskStatusChanged &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $TaskStatusChangedCopyWith<TaskStatusChanged> get copyWith =>
      _$TaskStatusChangedCopyWithImpl<TaskStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return taskStatusChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return taskStatusChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskStatusChanged != null) {
      return taskStatusChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return taskStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return taskStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (taskStatusChanged != null) {
      return taskStatusChanged(this);
    }
    return orElse();
  }
}

abstract class TaskStatusChanged implements TodosState {
  const factory TaskStatusChanged({required String message}) =
      _$TaskStatusChanged;

  String get message;
  @JsonKey(ignore: true)
  $TaskStatusChangedCopyWith<TaskStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Failure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure with DiagnosticableTreeMixin implements Failure {
  const _$Failure(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosState.failure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements TodosState {
  const factory Failure(String error) = _$Failure;

  String get error;
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyListCopyWith<$Res> {
  factory $EmptyListCopyWith(EmptyList value, $Res Function(EmptyList) then) =
      _$EmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyListCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $EmptyListCopyWith<$Res> {
  _$EmptyListCopyWithImpl(EmptyList _value, $Res Function(EmptyList) _then)
      : super(_value, (v) => _then(v as EmptyList));

  @override
  EmptyList get _value => super._value as EmptyList;
}

/// @nodoc

class _$EmptyList with DiagnosticableTreeMixin implements EmptyList {
  const _$EmptyList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.emptyList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodosState.emptyList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class EmptyList implements TodosState {
  const factory EmptyList() = _$EmptyList;
}

/// @nodoc
abstract class $CloseReminderBoxCopyWith<$Res> {
  factory $CloseReminderBoxCopyWith(
          CloseReminderBox value, $Res Function(CloseReminderBox) then) =
      _$CloseReminderBoxCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseReminderBoxCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res>
    implements $CloseReminderBoxCopyWith<$Res> {
  _$CloseReminderBoxCopyWithImpl(
      CloseReminderBox _value, $Res Function(CloseReminderBox) _then)
      : super(_value, (v) => _then(v as CloseReminderBox));

  @override
  CloseReminderBox get _value => super._value as CloseReminderBox;
}

/// @nodoc

class _$CloseReminderBox
    with DiagnosticableTreeMixin
    implements CloseReminderBox {
  const _$CloseReminderBox();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.closeReminderBox()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodosState.closeReminderBox'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseReminderBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, String message) loaded,
    required TResult Function(String message) taskAdded,
    required TResult Function(String message) taskStatusChanged,
    required TResult Function(String error) failure,
    required TResult Function() emptyList,
    required TResult Function() closeReminderBox,
  }) {
    return closeReminderBox();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
  }) {
    return closeReminderBox?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, String message)? loaded,
    TResult Function(String message)? taskAdded,
    TResult Function(String message)? taskStatusChanged,
    TResult Function(String error)? failure,
    TResult Function()? emptyList,
    TResult Function()? closeReminderBox,
    required TResult orElse(),
  }) {
    if (closeReminderBox != null) {
      return closeReminderBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskStatusChanged value) taskStatusChanged,
    required TResult Function(Failure value) failure,
    required TResult Function(EmptyList value) emptyList,
    required TResult Function(CloseReminderBox value) closeReminderBox,
  }) {
    return closeReminderBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
  }) {
    return closeReminderBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskStatusChanged value)? taskStatusChanged,
    TResult Function(Failure value)? failure,
    TResult Function(EmptyList value)? emptyList,
    TResult Function(CloseReminderBox value)? closeReminderBox,
    required TResult orElse(),
  }) {
    if (closeReminderBox != null) {
      return closeReminderBox(this);
    }
    return orElse();
  }
}

abstract class CloseReminderBox implements TodosState {
  const factory CloseReminderBox() = _$CloseReminderBox;
}
