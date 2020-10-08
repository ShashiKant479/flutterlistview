import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    items: List<String>.generate(10000, (i) => "Item $i"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body:
              // ListView.builder(
              //   itemCount: items.length,
              //   itemBuilder: (context, index) {
              //     return ListTile(
              //       title: Text('${items[index]}'),
              //     );
              //   },
              // ),
              ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.red,
            ),
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text("Index $index")),
            ),
          )),
    );
  }
}
