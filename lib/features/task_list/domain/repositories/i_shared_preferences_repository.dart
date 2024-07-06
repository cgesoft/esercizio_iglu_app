import '../../presentation/entities/task_list_page_ui_model.dart';

abstract class ISharedPreferencesRepository {
  Future<List<String>> getTaskListIds(String key);
  Future<String?> getTitle(String key);
  Future<String?> getDescription(String key);
  Future<TaskStatus?> getStatus(String key);
  Future<void> setTaskIdsList(String key, List<String> values);
  Future<void> setTitle(String key, String value);
  Future<void> setDescription(String key, String value);
  Future<void> setStatus(String key, bool value);
}
