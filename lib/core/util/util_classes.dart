import 'package:flutter/material.dart';

import '../../features/task_list/presentation/widgets/bottom_sheet_modal_widget.dart';

void showBottomSheetModal(BuildContext context, Widget modalChild,
        {bool isDismissible = true, bool showCloseButton = true, Function()? onClosePressed}) =>
    showModalBottomSheet(
      useSafeArea: true,
      isDismissible: isDismissible,
      enableDrag: isDismissible,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) => ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.85,
        ),
        child: BottomSheetModalWidget(
          isDismissible: isDismissible,
          showCloseButton: showCloseButton,
          onClosePressed: onClosePressed,
          child: modalChild,
        ),
      ),
    );
