import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: const Center(
        child: CircularProgressIndicator(),
      ),
      margin: const EdgeInsets.all(20),
    ));
  }
}
