import 'package:flutter/material.dart';
import 'package:flutter1/category_screen.dart';

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.purpleAccent,
        height: 300,
        width: 300,
        child: Center(
          child: Text(
            "Hello!",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class HelloRectangle2 extends StatefulWidget {
  HelloRectangle2();

  @override
  State<StatefulWidget> createState() {
    return _HelloRectangle2();
  }
}

class _HelloRectangle2 extends State<HelloRectangle2> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text("You have pushed this buttton many times"),
            Text("$_counter")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Rectangle"),
      ),
      body: CategoryScreen(),
    ),
  ));
}
