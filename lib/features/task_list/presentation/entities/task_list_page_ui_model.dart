class TaskListPageUiModel {
  final String logoPath;
  final String titleLabel;
  final String descriptionLabel;
  final List<TaskItemUiModel> tasks;
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

class TaskItemUiModel {
  final String id;
  final String title;
  final String description;
  final TaskStatus status;
  const TaskItemUiModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
  });
}

enum TaskStatus { toDo, completed }
