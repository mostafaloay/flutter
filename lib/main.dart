import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _p = ["mostafa","loay"];
  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('mostafa'),
            backgroundColor: Color.fromARGB(255, 99, 142, 142),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("Add Proudct"),
                  onPressed: () {},
                ),
              ),
              Column(
                children: _p
                    .map((text) => Card(
                          child: Column(children: <Widget>[
                            Image.asset('assets/1.jpg',height: 200),
                            Text(
                              text,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey),
                            )
                          ]),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}
