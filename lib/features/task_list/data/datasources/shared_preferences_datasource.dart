import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/failures.dart';

abstract class ISharedPreferencesDatasource {
  Future<List<String>?> getStringList(String key);
  Future<String?> getString(String key);
  Future<bool?> getBool(String key);
  Future<void> setStringList(String key, List<String> items);
  Future<void> setString(String key, String value);
  Future<void> setBool(String key, bool value);
  Future<void> remove(String key);
}

class SharedPreferencesDatasource implements ISharedPreferencesDatasource {
  SharedPreferencesDatasource();

  @override
  Future<List<String>?> getStringList(String key) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getStringList(key);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<String?> getString(String key) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(key);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<bool?> getBool(String key) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getBool(key);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<void> setStringList(String key, List<String> values) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setStringList(key, values);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<void> setString(String key, String value) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(key, value);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<void> setBool(String key, bool value) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool(key, value);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  @override
  Future<void> remove(String key) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove(key);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }
}
