// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_modal_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskModalUiModel {
  String get modalHeaderLabel => throw _privateConstructorUsedError;
  String get titleEditBoxLabel => throw _privateConstructorUsedError;
  String get descriptionEditBoxLabel => throw _privateConstructorUsedError;
  String get saveButtonLabel => throw _privateConstructorUsedError;
  String get deleteButtonLabel => throw _privateConstructorUsedError;
  TaskItemUiModel? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskModalUiModelCopyWith<TaskModalUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModalUiModelCopyWith<$Res> {
  factory $TaskModalUiModelCopyWith(
          TaskModalUiModel value, $Res Function(TaskModalUiModel) then) =
      _$TaskModalUiModelCopyWithImpl<$Res, TaskModalUiModel>;
  @useResult
  $Res call(
      {String modalHeaderLabel,
      String titleEditBoxLabel,
      String descriptionEditBoxLabel,
      String saveButtonLabel,
      String deleteButtonLabel,
      TaskItemUiModel? task});
}

/// @nodoc
class _$TaskModalUiModelCopyWithImpl<$Res, $Val extends TaskModalUiModel>
    implements $TaskModalUiModelCopyWith<$Res> {
  _$TaskModalUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modalHeaderLabel = null,
    Object? titleEditBoxLabel = null,
    Object? descriptionEditBoxLabel = null,
    Object? saveButtonLabel = null,
    Object? deleteButtonLabel = null,
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      modalHeaderLabel: null == modalHeaderLabel
          ? _value.modalHeaderLabel
          : modalHeaderLabel // ignore: cast_nullable_to_non_nullable
              as String,
      titleEditBoxLabel: null == titleEditBoxLabel
          ? _value.titleEditBoxLabel
          : titleEditBoxLabel // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEditBoxLabel: null == descriptionEditBoxLabel
          ? _value.descriptionEditBoxLabel
          : descriptionEditBoxLabel // ignore: cast_nullable_to_non_nullable
              as String,
      saveButtonLabel: null == saveButtonLabel
          ? _value.saveButtonLabel
          : saveButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      deleteButtonLabel: null == deleteButtonLabel
          ? _value.deleteButtonLabel
          : deleteButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskItemUiModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskModalUiModelImplCopyWith<$Res>
    implements $TaskModalUiModelCopyWith<$Res> {
  factory _$$TaskModalUiModelImplCopyWith(_$TaskModalUiModelImpl value,
          $Res Function(_$TaskModalUiModelImpl) then) =
      __$$TaskModalUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String modalHeaderLabel,
      String titleEditBoxLabel,
      String descriptionEditBoxLabel,
      String saveButtonLabel,
      String deleteButtonLabel,
      TaskItemUiModel? task});
}

/// @nodoc
class __$$TaskModalUiModelImplCopyWithImpl<$Res>
    extends _$TaskModalUiModelCopyWithImpl<$Res, _$TaskModalUiModelImpl>
    implements _$$TaskModalUiModelImplCopyWith<$Res> {
  __$$TaskModalUiModelImplCopyWithImpl(_$TaskModalUiModelImpl _value,
      $Res Function(_$TaskModalUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modalHeaderLabel = null,
    Object? titleEditBoxLabel = null,
    Object? descriptionEditBoxLabel = null,
    Object? saveButtonLabel = null,
    Object? deleteButtonLabel = null,
    Object? task = freezed,
  }) {
    return _then(_$TaskModalUiModelImpl(
      modalHeaderLabel: null == modalHeaderLabel
          ? _value.modalHeaderLabel
          : modalHeaderLabel // ignore: cast_nullable_to_non_nullable
              as String,
      titleEditBoxLabel: null == titleEditBoxLabel
          ? _value.titleEditBoxLabel
          : titleEditBoxLabel // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEditBoxLabel: null == descriptionEditBoxLabel
          ? _value.descriptionEditBoxLabel
          : descriptionEditBoxLabel // ignore: cast_nullable_to_non_nullable
              as String,
      saveButtonLabel: null == saveButtonLabel
          ? _value.saveButtonLabel
          : saveButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      deleteButtonLabel: null == deleteButtonLabel
          ? _value.deleteButtonLabel
          : deleteButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskItemUiModel?,
    ));
  }
}

/// @nodoc

class _$TaskModalUiModelImpl implements _TaskModalUiModel {
  const _$TaskModalUiModelImpl(
      {this.modalHeaderLabel = "",
      this.titleEditBoxLabel = "",
      this.descriptionEditBoxLabel = "",
      this.saveButtonLabel = "",
      this.deleteButtonLabel = "",
      this.task});

  @override
  @JsonKey()
  final String modalHeaderLabel;
  @override
  @JsonKey()
  final String titleEditBoxLabel;
  @override
  @JsonKey()
  final String descriptionEditBoxLabel;
  @override
  @JsonKey()
  final String saveButtonLabel;
  @override
  @JsonKey()
  final String deleteButtonLabel;
  @override
  final TaskItemUiModel? task;

  @override
  String toString() {
    return 'TaskModalUiModel(modalHeaderLabel: $modalHeaderLabel, titleEditBoxLabel: $titleEditBoxLabel, descriptionEditBoxLabel: $descriptionEditBoxLabel, saveButtonLabel: $saveButtonLabel, deleteButtonLabel: $deleteButtonLabel, task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModalUiModelImpl &&
            (identical(other.modalHeaderLabel, modalHeaderLabel) ||
                other.modalHeaderLabel == modalHeaderLabel) &&
            (identical(other.titleEditBoxLabel, titleEditBoxLabel) ||
                other.titleEditBoxLabel == titleEditBoxLabel) &&
            (identical(
                    other.descriptionEditBoxLabel, descriptionEditBoxLabel) ||
                other.descriptionEditBoxLabel == descriptionEditBoxLabel) &&
            (identical(other.saveButtonLabel, saveButtonLabel) ||
                other.saveButtonLabel == saveButtonLabel) &&
            (identical(other.deleteButtonLabel, deleteButtonLabel) ||
                other.deleteButtonLabel == deleteButtonLabel) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      modalHeaderLabel,
      titleEditBoxLabel,
      descriptionEditBoxLabel,
      saveButtonLabel,
      deleteButtonLabel,
      task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModalUiModelImplCopyWith<_$TaskModalUiModelImpl> get copyWith =>
      __$$TaskModalUiModelImplCopyWithImpl<_$TaskModalUiModelImpl>(
          this, _$identity);
}

abstract class _TaskModalUiModel implements TaskModalUiModel {
  const factory _TaskModalUiModel(
      {final String modalHeaderLabel,
      final String titleEditBoxLabel,
      final String descriptionEditBoxLabel,
      final String saveButtonLabel,
      final String deleteButtonLabel,
      final TaskItemUiModel? task}) = _$TaskModalUiModelImpl;

  @override
  String get modalHeaderLabel;
  @override
  String get titleEditBoxLabel;
  @override
  String get descriptionEditBoxLabel;
  @override
  String get saveButtonLabel;
  @override
  String get deleteButtonLabel;
  @override
  TaskItemUiModel? get task;
  @override
  @JsonKey(ignore: true)
  _$$TaskModalUiModelImplCopyWith<_$TaskModalUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
