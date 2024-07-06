import 'package:freezed_annotation/freezed_annotation.dart';

import 'task_list_page_ui_model.dart';

part 'task_modal_ui_model.freezed.dart';

@freezed
class TaskModalUiModel with _$TaskModalUiModel {
  const factory TaskModalUiModel({
    @Default("") String modalHeaderLabel,
    @Default("") String titleEditBoxLabel,
    @Default("") String descriptionEditBoxLabel,
    @Default("") String saveButtonLabel,
    @Default("") String deleteButtonLabel,
    TaskItemUiModel? task,
  }) = _TaskModalUiModel;
}
