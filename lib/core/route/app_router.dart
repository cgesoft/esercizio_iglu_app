import 'package:auto_route/auto_route.dart';

import '../../features/task_list/presentation/pages/task_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  RouteType get defaultRouteType => const RouteType.adaptive(); //.cupertino, .adaptive ..etc

  List<AutoRoute> get routes => [
        AutoRoute(page: TaskListRoute.page, initial: true),
      ];
}

final appRouter = AppRouter();
