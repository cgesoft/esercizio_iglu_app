import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/app_injection_module.dart';
import '../../../../core/util/util_classes.dart';
import '../../../../core/widgets/failure_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../blocs/task_list_page_cubit.dart';
import '../blocs/task_list_page_state.dart';
import '../entities/task_modal_ui_model.dart';
import '../widgets/task_list_page_widget.dart';
import '../widgets/task_modal_widget.dart';

@RoutePage()
class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _stateToBuilder(context);
  }

  Widget _stateToBuilder(BuildContext context) {
    return BlocProvider<TaskListPageCubit>(
      create: (context) => injector<TaskListPageCubit>(),
      child: BlocConsumer<TaskListPageCubit, TaskListPageState>(
        buildWhen: (_, currentState) {
          if (currentState is ShowEditTaskModalState ||
              currentState is ShowCreateTaskModalState ||
              currentState is ShowSuccessTaskModalState ||
              currentState is ShowFailureTaskModalState) {
            return false;
          }
          return true;
        },
        listener: (context, currentState) {
          if (currentState is ShowEditTaskModalState ||
              currentState is ShowCreateTaskModalState ||
              currentState is ShowSuccessTaskModalState ||
              currentState is ShowFailureTaskModalState) {
            return _stateListener(context, currentState);
          }
        },
        builder: (context, state) => _stateToWidget(context, state),
      ),
    );
  }

  void _stateListener(BuildContext context, TaskListPageState state) {
    switch (state) {
      case ShowEditTaskModalState():
        _showTaskEditModal(context, state.uiModel);
      case ShowCreateTaskModalState():
        _showTaskEditModal(context, state.uiModel);
      case ShowSuccessTaskModalState():
        Navigator.of(context).pop();
        _showToastMessage(context, state.message);
      case ShowFailureTaskModalState():
        Navigator.of(context).pop();
        _showToastMessage(context, state.message);
      default:
    }
  }

  _showTaskEditModal(BuildContext context, TaskModalUiModel editTaskModalUiModel) {
    showBottomSheetModal(
      context,
      isDismissible: false,
      TaskModalWidget(
          uiModel: editTaskModalUiModel,
          onSavePressed: (task) {
            context.read<TaskListPageCubit>().saveTask(task);
          },
          onDeletePressed: (task) {
            context.read<TaskListPageCubit>().deleteTask(task);
          }),
    );
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

  void _showToastMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
