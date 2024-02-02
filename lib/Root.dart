import 'package:flutter/material.dart';

import 'OptionUi.dart';

// function to trigger build process
void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OptionUi(), // Scaffold
    ); // MaterialApp
  }
}
