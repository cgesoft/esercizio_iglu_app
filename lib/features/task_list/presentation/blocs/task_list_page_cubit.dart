import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/functions.dart';
import '../../../../core/logger/logger_mixin.dart';
import '../entities/task_list_page_ui_model.dart';
import 'task_list_page_state.dart';

class TaskListPageCubit extends Cubit<TaskListPageState> with LoggerMixin {
  final Function0<TaskListPageUiModel> _taskListPageMapper;

  TaskListPageCubit(this._taskListPageMapper) : super(TaskListPageInitialState());

  Future<void> initTaskListPage() async {
    emit(TaskListPageLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    emit(TaskListPageSuccessState(pageUiModel: _taskListPageMapper()));
  }
}
