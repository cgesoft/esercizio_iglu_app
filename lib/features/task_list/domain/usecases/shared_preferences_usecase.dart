import 'package:fpdart/fpdart.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/logger/logger_mixin.dart';
import '../../presentation/entities/task_list_page_ui_model.dart';
import '../repositories/i_shared_preferences_repository.dart';

class SharedPreferencesUseCase with LoggerMixin {
  final ISharedPreferencesRepository _sharedPreferencesRepository;

  SharedPreferencesUseCase(this._sharedPreferencesRepository);

  Future<Either<Failure, List<TaskItemUiModel>>> getTaskModels(String taskListKey) async {
    try {
      const taskTitleKey = SharedPreferenceKeyConstants.taskTitleKey;
      const taskDescKey = SharedPreferenceKeyConstants.taskDescKey;
      const taskStatusKey = SharedPreferenceKeyConstants.taskStatusKey;
      List<TaskItemUiModel> taskModels = [];

      final taskIds = await _sharedPreferencesRepository.getTaskListIds(taskListKey);
      for (var taskId in taskIds) {
        var taskTitle = await _sharedPreferencesRepository.getTitle('$taskTitleKey$taskId');
        var taskDescription =
            await _sharedPreferencesRepository.getDescription('$taskDescKey$taskId');
        var taskStatus = await _sharedPreferencesRepository.getStatus('$taskStatusKey$taskId');
        if (taskTitle != null && taskDescription != null && taskStatus != null) {
          taskModels.add(
            TaskItemUiModel(
                id: taskId, title: taskTitle, description: taskDescription, status: taskStatus),
          );
        }
      }
      taskModels.sort((a, b) => b.status.toString().compareTo(a.status.toString()));
      return Either.right(taskModels);
    } catch (error) {
      log.error(error.toString());
      return Left(ServerFailure(error.toString()));
    }
  }

  Future<Either<Failure, bool>> setTaskModel(String taskListKey, TaskItemUiModel task) async {
    try {
      const taskTitleKey = SharedPreferenceKeyConstants.taskTitleKey;
      const taskDescKey = SharedPreferenceKeyConstants.taskDescKey;
      const taskStatusKey = SharedPreferenceKeyConstants.taskStatusKey;
      final taskId = task.id;
      var taskList = await _sharedPreferencesRepository.getTaskListIds(taskListKey);
      taskList.add(taskId);

      await _sharedPreferencesRepository.setTaskIdsList(taskListKey, taskList);
      await _sharedPreferencesRepository.setTitle(taskTitleKey, task.title);
      await _sharedPreferencesRepository.setDescription(taskDescKey, task.description);
      await _sharedPreferencesRepository.setStatus(
          taskStatusKey, task.status == TaskStatus.completed);
      return Either.right(true);
    } catch (error) {
      log.error(error.toString());
      return Left(ServerFailure(error.toString()));
    }
  }
}
