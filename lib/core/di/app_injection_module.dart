import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../features/task_list/data/datasources/shared_preferences_datasource.dart';
import '../../features/task_list/data/mappers/task_ids_list_domain_model_mapper.dart';
import '../../features/task_list/data/mappers/task_status_domain_model_mapper.dart';
import '../../features/task_list/data/repositories/shared_preferences_repository.dart';
import '../../features/task_list/domain/repositories/i_shared_preferences_repository.dart';
import '../../features/task_list/domain/usecases/shared_preferences_usecase.dart';
import '../../features/task_list/presentation/blocs/task_list_page_cubit.dart';
import '../../features/task_list/presentation/entities/task_list_page_ui_model.dart';
import '../../features/task_list/presentation/entities/task_modal_ui_model.dart';
import '../../features/task_list/presentation/mappers/task_list_page_ui_model_mapper.dart';
import '../../features/task_list/presentation/mappers/task_modal_ui_model_mapper.dart';
import '../functions/functions.dart';
import '../logger/logger_abstract.dart';
import '../logger/logger_impl.dart';

final GetIt injector = GetIt.instance;

FutureOr<void> registerDependencies() async {
  _registerDatasources();
  _registerDataModelMappers();
  _registerDataRepositories();
  _registerUsecases();
  _registerUiModelMappers();
  _registerCubits();
  _registerLogger();
}

void _registerDatasources() {
  injector.registerLazySingleton<ISharedPreferencesDatasource>(() => SharedPreferencesDatasource());
}

void _registerDataModelMappers() {
  injector.registerFactory<Function1<List<String>?, List<String>>>(() => TaskIdsListMapper());
  injector.registerFactory<Function1<bool?, TaskStatus?>>(() => TaskStatusMapper());
}

void _registerDataRepositories() {
  injector.registerLazySingleton<ISharedPreferencesRepository>(
      () => SharedPreferencesRepository(injector(), injector(), injector()));
}

void _registerUsecases() {
  injector.registerFactory<SharedPreferencesUseCase>(() => SharedPreferencesUseCase(injector()));
}

void _registerCubits() {
  injector.registerFactory<TaskListPageCubit>(
      () => TaskListPageCubit(injector(), injector(), injector()));
}

void _registerUiModelMappers() {
  injector.registerFactory<Function1<List<TaskItemUiModel>, TaskListPageUiModel>>(
      () => TaskListPageUiModelMapper());
  injector.registerFactory<Function0<TaskModalUiModel>>(() => TaskModalUiModelMapper());
}

void _registerLogger() {
  // Logger dependencies
  injector.registerLazySingleton<LoggerAbstract>(() => LoggerImpl(logger: injector()));
  injector.registerLazySingleton<Logger>(() => Logger(
        printer: PrettyPrinter(
          printTime: true,
          printEmojis: false,
        ),
      ));
}
