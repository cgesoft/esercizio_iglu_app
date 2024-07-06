import 'package:flutter/material.dart';

class BottomSheetModalWidget extends StatelessWidget {
  final Widget child;
  final bool isDismissible;
  final bool showCloseButton;
  final Function()? onClosePressed;

  const BottomSheetModalWidget({
    Key? key,
    required this.child,
    required this.isDismissible,
    required this.showCloseButton,
    this.onClosePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
                padding: const EdgeInsets.all(13),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Visibility(
                        visible: showCloseButton,
                        child: IconButton(
                          icon: const Icon(Icons.close_rounded),
                          onPressed: () => onClosePressed != null
                              ? onClosePressed!()
                              : Navigator.of(context).pop(),
                        )))),
            child,
          ],
        ));
  }
}
