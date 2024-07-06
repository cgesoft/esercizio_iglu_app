import '../../../../core/functions/functions.dart';
import '../../presentation/entities/task_list_page_ui_model.dart';

class TaskStatusMapper implements Function1<bool?, TaskStatus?> {
  @override
  TaskStatus? call(bool? isDone) {
    switch (isDone) {
      case true:
        return TaskStatus.completed;
      case false:
        return TaskStatus.toDo;
      case null:
        return null;
    }
  }
}
