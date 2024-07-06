import '../../../../core/functions/functions.dart';
import '../../domain/repositories/i_shared_preferences_repository.dart';
import '../../presentation/entities/task_list_page_ui_model.dart';
import '../datasources/shared_preferences_datasource.dart';

class SharedPreferencesRepository implements ISharedPreferencesRepository {
  final ISharedPreferencesDatasource _sharedPreferencesDatasource;
  final Function1<bool?, TaskStatus?> _taskStatusMapper;
  final Function1<List<String>?, List<String>> _taskListIdsMapper;

  SharedPreferencesRepository(
      this._taskStatusMapper, this._sharedPreferencesDatasource, this._taskListIdsMapper);

  @override
  Future<List<String>> getTaskListIds(String key) async {
    final response = await _sharedPreferencesDatasource.getStringList(key);
    return _taskListIdsMapper(response);
  }

  @override
  Future<String?> getTitle(String key) async {
    final response = await _sharedPreferencesDatasource.getString(key);
    return response;
  }

  @override
  Future<String?> getDescription(String key) async {
    final response = await _sharedPreferencesDatasource.getString(key);
    return response;
  }

  @override
  Future<TaskStatus?> getStatus(String key) async {
    final response = await _sharedPreferencesDatasource.getBool(key);
    return _taskStatusMapper(response);
  }

  @override
  Future<void> setTaskIdsList(String key, List<String> values) async {
    await _sharedPreferencesDatasource.setStringList(key, values);
  }

  @override
  Future<void> setTitle(String key, String value) async {
    await _sharedPreferencesDatasource.setString(key, value);
  }

  @override
  Future<void> setDescription(String key, String value) async {
    await _sharedPreferencesDatasource.setString(key, value);
  }

  @override
  Future<void> setStatus(String key, bool value) async {
    await _sharedPreferencesDatasource.setBool(key, value);
  }
}
