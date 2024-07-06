import '../entities/task_list_page_ui_model.dart';
import '../entities/task_modal_ui_model.dart';

sealed class TaskListPageState {}

class TaskListPageInitialState extends TaskListPageState {}

class TaskListPageLoadingState extends TaskListPageState {}

class TaskListPageSuccessState extends TaskListPageState {
  final TaskListPageUiModel pageUiModel;
  TaskListPageSuccessState({required this.pageUiModel});
}

class TaskListPageErrorState extends TaskListPageState {
  final String message;
  TaskListPageErrorState({required this.message});
}

class ShowEditTaskModalState extends TaskListPageState {
  final TaskModalUiModel uiModel;
  ShowEditTaskModalState({required this.uiModel});
}

class ShowCreateTaskModalState extends TaskListPageState {
  final TaskModalUiModel uiModel;
  ShowCreateTaskModalState({required this.uiModel});
}

class ShowSuccessTaskModalState extends TaskListPageState {
  final String message;
  ShowSuccessTaskModalState({required this.message});
}

class ShowFailureTaskModalState extends TaskListPageState {
  final String message;
  ShowFailureTaskModalState({required this.message});
}
