import 'package:flutter/cupertino.dart';

import '../../../../core/constants/app_paths.dart';
import '../../../../core/functions/functions.dart';
import '../entities/task_list_page_ui_model.dart';

class TaskListPageUiModelMapper implements Function0<TaskListPageUiModel> {
  TaskListPageUiModelMapper();

  @visibleForTesting
  static const logoPath = AppPaths.appImgLogo;
  @visibleForTesting
  static const titleLabel = 'Check list';
  @visibleForTesting
  static const descriptionLabel = 'Keep your task under control';

  @override
  TaskListPageUiModel call() {
    return const TaskListPageUiModel(
      logoPath: logoPath,
      titleLabel: titleLabel,
      descriptionLabel: descriptionLabel,
    );
  }
}
