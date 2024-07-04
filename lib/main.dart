import 'dart:async';

import 'package:flutter/material.dart';

import 'core/constants/app_strings.dart';
import 'core/di/app_injection_module.dart';
import 'core/route/app_router.dart';
import 'core/theme/app_themes.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await registerDependencies();
      runApp(const MyApp());
    },
    (error, stackTrace) {
      FlutterError.dumpErrorToConsole(
        FlutterErrorDetails(exception: error, stack: stackTrace),
        forceReport: true,
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: AppConstants.appTitle,
      theme: AppTheme.light,
    );
  }
}
