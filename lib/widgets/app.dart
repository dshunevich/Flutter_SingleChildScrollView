import 'package:flutter/material.dart';
import 'package:flutter_singlechildscrollview/widgets/example.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Example(),
    );
  }
}
