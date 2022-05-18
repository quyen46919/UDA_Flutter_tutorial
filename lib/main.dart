import 'package:flutter/material.dart';
import 'package:uda_flutter_tutorial/demo/stack_and_positioned.dart';
import 'package:uda_flutter_tutorial/demo/listview.dart';
import 'package:uda_flutter_tutorial/demo/listview_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView and ListView.builder'),
        ),
        body: MyListView(),
      ),
    );
  }
}
