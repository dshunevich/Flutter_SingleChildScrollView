import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    //controller.addListener(() {
    Future.delayed(Duration(seconds: 4)).then((value) {
      controller.animateTo(100,
          duration: Duration(seconds: 2), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    var items = <Widget>[];
    for (var i = 0; i < 1000; i++) {
      final widget = Text('$i');
      items.add(widget);
    }
    return Scaffold(
      body: SingleChildScrollView(
        //controller: controller,
        //scrollDirection: Axis.horizontal,
        child: Container(
          //height: double.infinity,
          width: double.infinity,
          //child: Row(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: items,
          ),
        ),
      ),
    );
  }
}
