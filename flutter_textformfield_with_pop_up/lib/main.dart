import 'package:flutter/material.dart';
import 'package:flutter_textformfield_with_pop_up/custom_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  FirstPage();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 90.0),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: CustomTextField(
            controller: _controller,
          ),
        )
      ],
    ));
  }
}
