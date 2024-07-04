import 'package:esercizio_iglu_app/core/di/app_injection_module.dart';
import 'package:esercizio_iglu_app/core/logger/logger_abstract.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class MockLoggerAbstract extends Mock implements LoggerAbstract {}

void main() {
  final getIt = GetIt.I;
  final _loggerAbstract = MockLoggerAbstract();

  setUpAll(() {});

  setUp(() {
    getIt.registerFactory<LoggerAbstract>(() => _loggerAbstract);
  });

  tearDown(() {
    injector.reset();
    reset(_loggerAbstract);
  });

  group("TaskListPageCubit test", () {});
}
