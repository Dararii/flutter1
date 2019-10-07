import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  final String name;

  const ConverterScreen({Key key, @required this.name})
      : assert(name != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ConverterScreen(name: name);
  }
}

class _ConverterScreen extends State<ConverterScreen> {
  _ConverterScreen({@required this.name}) : assert(name != null);

  String name;
  int counter = 0;
  String nameLast;

  @override
  void initState() {
    nameLast = name + counter.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            nameLast,
            style: Theme.of(context).textTheme.headline,
          ),
          Text(
            "Coversion:",
            style: Theme.of(context).textTheme.subhead,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
                nameLast = name + counter.toString();
              });
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
