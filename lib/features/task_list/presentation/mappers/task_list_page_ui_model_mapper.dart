import 'package:flutter/cupertino.dart';

import '../../../../core/constants/app_paths.dart';
import '../../../../core/functions/functions.dart';
import '../entities/task_list_page_ui_model.dart';

class TaskListPageUiModelMapper implements Function1<List<TaskItemUiModel>, TaskListPageUiModel> {
  TaskListPageUiModelMapper();

  @visibleForTesting
  static const logoPath = AppPaths.appImgLogo;
  @visibleForTesting
  static const titleLabel = 'Check list';
  @visibleForTesting
  static const descriptionLabel = 'Keep your task under control';
  @visibleForTesting
  static const noTaskInformativeLabel = 'You don\'t have any task yet.';

  @override
  TaskListPageUiModel call(List<TaskItemUiModel> taskModels) {
    return TaskListPageUiModel(
      logoPath: logoPath,
      titleLabel: titleLabel,
      descriptionLabel: descriptionLabel,
      areTaskAvailable: taskModels.isNotEmpty,
      noTaskInformativeLabel: noTaskInformativeLabel,
      tasks: taskModels,
    );
  }
}
