import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/app_injection_module.dart';
import '../../../../core/widgets/failure_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../blocs/task_list_page_cubit.dart';
import '../blocs/task_list_page_state.dart';
import '../widgets/task_list_page_widget.dart';

@RoutePage()
class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _stateToBuilder(context));
  }

  Widget _stateToBuilder(BuildContext context) {
    return BlocProvider<TaskListPageCubit>(
        create: (context) => injector<TaskListPageCubit>(),
        child: BlocConsumer<TaskListPageCubit, TaskListPageState>(
          buildWhen: (_, currentState) {
            //if (currentState is TaskListPageShowNotificationDialogState) {
            //  return false;
            //}
            return true;
          },
          listener: (context, state) {
            //  if (state is TaskListPageShowNotificationDialogState) {
            //    return _stateListener(context, state);
            //  }
          },
          builder: (context, state) => _stateToWidget(context, state),
        ));
  }

  Widget _stateToWidget(BuildContext context, TaskListPageState state) {
    switch (state) {
      case TaskListPageInitialState():
        _initTaskListPage(context);
        return const LoadingWidget();
      case TaskListPageSuccessState():
        return TaskListPageWidget(pageUiModel: state.pageUiModel);
      case TaskListPageErrorState():
        return FailureWidget(message: state.message);
      default:
        return const LoadingWidget();
    }
  }

  void _initTaskListPage(BuildContext context) {
    context.read<TaskListPageCubit>().initTaskListPage();
  }
}
