import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list = ['Dart', 'Java', 'Kotlin', 'C++', 'C#', 'Javascript'];
  String item = 'Dart';

  void onChanged(String value) {
    setState(() {
      item = value;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo DropDownButton'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text('Item aktif: $item'),
              DropdownButton(
                value: item,
                items: list.map((String val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Row(
                      children: <Widget>[Icon(Icons.phone_android), Text(val)],
                    ),
                  );
                }).toList(),
                onChanged: (String value) {
                  onChanged(value);
                },
              )
            ],
          ),
        ),
      );
}
