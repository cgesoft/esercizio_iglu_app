import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  final String message;
  const FailureWidget({
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(message)),
      margin: const EdgeInsets.all(20),
    );
  }
}
