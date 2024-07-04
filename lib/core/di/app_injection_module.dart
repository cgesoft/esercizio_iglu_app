import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../features/task_list/presentation/blocs/task_list_page_cubit.dart';
import '../../features/task_list/presentation/entities/task_list_page_ui_model.dart';
import '../../features/task_list/presentation/mappers/task_list_page_ui_model_mapper.dart';
import '../functions/functions.dart';
import '../logger/logger_abstract.dart';
import '../logger/logger_impl.dart';

final GetIt injector = GetIt.instance;

FutureOr<void> registerDependencies() async {
  _registerLogger();
  _registerDataModelMappers();
  _registerDomainModelMappers();
  _registerUiModelMappers();
  _registerCubits();
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

void _registerDomainModelMappers() {}

void _registerDataModelMappers() {
  //injector.registerFactory<Function5<String, String, String, String, String, FamilyRequestDataModel>>(() => FamilyRequestDataModelMapper(),);
}

void _registerUiModelMappers() {
  injector.registerFactory<Function0<TaskListPageUiModel>>(() => TaskListPageUiModelMapper());
}

void _registerCubits() {
  injector.registerFactory<TaskListPageCubit>(() => TaskListPageCubit(injector()));
}

//@module
//abstract class BindingModule {
//@lazySingleton
//@Named('GoogleSignInClient')
//GoogleSignIn googleSignInClient() => GoogleSignIn(scopes: googleSignInScopes);
//}
