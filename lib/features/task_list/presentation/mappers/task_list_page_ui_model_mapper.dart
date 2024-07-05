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
  @visibleForTesting
  static const noTaskInformativeLabel = 'You don\'t have any task yet.';

  @override
  TaskListPageUiModel call() {
    return TaskListPageUiModel(
      logoPath: logoPath,
      titleLabel: titleLabel,
      descriptionLabel: descriptionLabel,
      areTaskAvailable: true,
      noTaskInformativeLabel: noTaskInformativeLabel,
      tasks: _prepareTasks(),
    );
  }

  _prepareTasks() {
    return [
      TaskItemModel(
        title: 'Title 1',
        description: 'Description 1',
        isDone: true,
      ),
      TaskItemModel(
        title:
            'Title 2 long fasdgasdgadsfasdggrsfsdgsdfgsdfgsdfgsfdgsdfgsdfgssdfgsdfg sf sdfg sdfg sdfg sdfgs dfgsfgsdf g',
        description:
            'Description 2 long asdfadsfkgajdhf jaksdhfgadjhfgajdksfasjdhgasia lkjsdghfjasdghaghajdfjahsdgauyksgfjas asjdgkasgf ',
        isDone: false,
      ),
      TaskItemModel(
        title: 'Title 3 asdfasdf asdf asd',
        description:
            'Description 3 asdf asd asgasdfiasdhf kasdfjkahdfkgajd fasdfgidgfkjasgdfuaysgfak df gadsfgaksdfgjkahd ',
        isDone: true,
      ),
    ];
  }
}
