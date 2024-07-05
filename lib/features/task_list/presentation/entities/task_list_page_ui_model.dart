class TaskListPageUiModel {
  final String logoPath;
  final String titleLabel;
  final String descriptionLabel;
  final List<TaskItemModel> tasks;
  final bool areTaskAvailable;
  final String noTaskInformativeLabel;

  const TaskListPageUiModel({
    required this.logoPath,
    required this.titleLabel,
    required this.descriptionLabel,
    required this.tasks,
    required this.areTaskAvailable,
    required this.noTaskInformativeLabel,
  });
}

class TaskItemModel {
  final String title;
  final String description;
  final bool isDone;
  const TaskItemModel({
    required this.title,
    required this.description,
    required this.isDone,
  });
}
