import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/functions/functions.dart';
import '../../../../core/logger/logger_mixin.dart';
import '../../domain/usecases/shared_preferences_usecase.dart';
import '../entities/task_list_page_ui_model.dart';
import '../entities/task_modal_ui_model.dart';
import 'task_list_page_state.dart';

class TaskListPageCubit extends Cubit<TaskListPageState> with LoggerMixin {
  final Function1<List<TaskItemUiModel>, TaskListPageUiModel> _taskListPageMapper;
  final Function0<TaskModalUiModel> _taskModalUiModelMapper;

  final SharedPreferencesUseCase _sharedPreferencesUseCase;

  TaskListPageCubit(
      this._taskListPageMapper, this._taskModalUiModelMapper, this._sharedPreferencesUseCase)
      : super(TaskListPageInitialState());

  Future<void> initTaskListPage() async {
    emit(TaskListPageLoadingState());
    try {
      var taskModelsOrError =
          await _sharedPreferencesUseCase.getTaskModels(SharedPreferenceKeyConstants.taskListKey);
      List<TaskItemUiModel> taskModels = taskModelsOrError.match(
        (error) => throw Exception(error.message),
        (taskModels) => taskModels,
      );
      emit(TaskListPageSuccessState(pageUiModel: _taskListPageMapper(taskModels)));
    } catch (e) {
      log.error(e.toString());
      emit(TaskListPageErrorState(message: e.toString()));
    }
  }

  void writeTask() {
    var baseModalUiModel = _taskModalUiModelMapper();
    emitSingle(ShowCreateTaskModalState(uiModel: baseModalUiModel));
  }

  Future<void> saveTask(TaskItemUiModel task) async {
    emit(TaskListPageLoadingState());
    try {
      var successOrError = await _sharedPreferencesUseCase.setTaskModel(
          SharedPreferenceKeyConstants.taskListKey, task);
      bool success = successOrError.match(
        (error) => throw Exception(error.message),
        (success) => success,
      );
      if (success) {
        emit(ShowSuccessTaskModalState());
      } else {
        emit(ShowFailureTaskModalState());
      }
    } catch (e) {
      log.error(e.toString());
      emit(TaskListPageErrorState(message: e.toString()));
    }
  }

  Future<void> deleteTask(TaskItemUiModel? task) async {
    //emit(TaskListPageLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    //emit(TaskListPageSuccessState(pageUiModel: _taskListPageMapper()));
  }

  void editTask(TaskItemUiModel taskUiModel) {
    var baseModalUiModel = _taskModalUiModelMapper();
    var editModalUiModel = baseModalUiModel.copyWith(task: taskUiModel);
    emitSingle(ShowEditTaskModalState(uiModel: editModalUiModel));
  }
}
