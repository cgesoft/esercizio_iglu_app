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
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildLogo(context, shorterScreenSize),
          _buildTitle(context),
          _buildDescription(context),
          _buildTaskList(context),
        ],
      ),
    ));
  }

  _buildTaskList(BuildContext context) {
    return SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ));
  }

  _buildLogo(BuildContext context, double shorterScreenSize) {
    double logoSize = shorterScreenSize / 4;
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

  _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        pageUiModel.titleLabel,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }

  _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        pageUiModel.descriptionLabel,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
