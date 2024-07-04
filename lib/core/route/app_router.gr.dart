// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    TaskListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskListPage(),
      );
    }
  };
}

/// generated route for
/// [TaskListPage]
class TaskListRoute extends PageRouteInfo<void> {
  const TaskListRoute({List<PageRouteInfo>? children})
      : super(
          TaskListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
