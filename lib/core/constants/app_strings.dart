import '../../features/task_list/presentation/entities/task_list_page_ui_model.dart';

class AppConstants {
  static const String appTitle = 'Esercizio Iglu';
}

class TaskStatuses {
  static const map = const {TaskStatus.toDo: 'To do', TaskStatus.completed: 'Completed'};
}

class SharedPreferenceKeyConstants {
  static const String taskListKey = 'taskList';
  static const String taskTitleKey = 'title-';
  static const String taskDescKey = 'desc-';
  static const String taskStatusKey = 'Esercizio Iglu';
}
