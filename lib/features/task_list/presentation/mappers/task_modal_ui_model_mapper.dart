import 'package:flutter/cupertino.dart';

import '../../../../core/functions/functions.dart';
import '../entities/task_modal_ui_model.dart';

class TaskModalUiModelMapper implements Function0<TaskModalUiModel> {
  TaskModalUiModelMapper();

  @visibleForTesting
  static const modalHeaderLabel = 'Your task summary';
  @visibleForTesting
  static const titleEditBoxLabel = 'Title';
  @visibleForTesting
  static const descriptionEditBoxLabel = 'Description';
  @visibleForTesting
  static const saveButtonLabel = 'Save';
  @visibleForTesting
  static const deleteButtonLabel = 'Delete';

  @override
  TaskModalUiModel call() {
    return const TaskModalUiModel(
      modalHeaderLabel: modalHeaderLabel,
      titleEditBoxLabel: titleEditBoxLabel,
      descriptionEditBoxLabel: descriptionEditBoxLabel,
      saveButtonLabel: saveButtonLabel,
      deleteButtonLabel: deleteButtonLabel,
    );
  }
}
