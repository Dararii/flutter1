import 'package:flutter/material.dart';
import 'package:flutter1/converter_screen.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  final IconData iconLocation;

  const CategoryWidget({
    Key key,
    @required this.name,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(iconLocation != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text("Converter: $name"),
        ),
        body: ConverterScreen(
          name: name,
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 80,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          highlightColor: Colors.amberAccent,
          splashColor: Colors.amber,
          onTap: () {
            print("$name I was tapped!");
            _navigateToConverter(context);
          },
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Icon(
                        iconLocation,
                        size: 60,
                      )),
                  Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
