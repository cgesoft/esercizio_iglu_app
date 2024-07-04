import '../entities/task_list_page_ui_model.dart';

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
