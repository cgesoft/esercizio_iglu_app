import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../entities/task_list_page_ui_model.dart';

class TaskListPageWidget extends StatelessWidget {
  final TaskListPageUiModel pageUiModel;

  const TaskListPageWidget({required this.pageUiModel, super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    double shorterScreenSize = screenHeight > screenWidth ? screenWidth : screenHeight;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildLogo(shorterScreenSize),
              _buildTitle(),
              _buildDescription(),
              _buildTaskList(shorterScreenSize),
              //_buildAddTaskButton(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed logic here
          print('Floating Action Button Pressed');
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildLogo(double shorterScreenSize) {
    double logoSize = shorterScreenSize / 5;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: logoSize,
            height: logoSize,
            child: ClipOval(
                //borderRadius: BorderRadius.circular(20), // Image border
                child: SvgPicture.asset(fit: BoxFit.fill, pageUiModel.logoPath)),
          ),
        ],
      ),
    );
  }

  _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        pageUiModel.titleLabel,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  _buildDescription() {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        pageUiModel.descriptionLabel,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }

  _buildTaskList(double shorterScreenSize) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: shorterScreenSize / 6),
            child: Container(
              padding: const EdgeInsets.all(10), // Adjust the padding as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(1, 3), // changes position of shadow
                  ),
                ],
              ),
              child: pageUiModel.areTaskAvailable ? _buildTaskItems() : _buildNoTaskToShow(),
            )));
  }

  _buildNoTaskToShow() {
    return Center(
      child: Text(
        pageUiModel.noTaskInformativeLabel,
        textAlign: TextAlign.center,
      ),
    );
  }

  _buildTaskItems() {
    return ListView.separated(
      itemCount: pageUiModel.tasks.length,
      itemBuilder: (context, index) {
        final taskItem = pageUiModel.tasks[index];
        return _buildTaskItem(taskItem);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  _buildTaskItem(TaskItemModel taskItem) {
    return Material(
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      taskItem.title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      taskItem.description,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Checkbox(
                value: taskItem.isDone,
                onChanged: (bool? value) {},
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
