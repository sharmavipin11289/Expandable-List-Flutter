import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        home: new MyApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, i) {
          return ExpansionTile(
            title: Text('Header $i'),
            children: getChildrens(i),
          );
        },
        itemCount: 5,
      ),
    );
  }

  List<Widget> getChildrens(int header) {
    List<Widget> ar = [];

    for (int i in [0, 1, 2, 3, 4]) {
      ar.add(
        ListTile(
          title: Text('value $i'),
          onTap: () {
            tappedOn(i, header);
          },
        ),
      );
    }
    return ar;
  }

  tappedOn(int value, int header) {
    print('value is $value , header is $header');
  }
}
