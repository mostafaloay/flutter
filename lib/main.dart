import 'package:flutter/material.dart';
import 'package:flutter_app/product_manger.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  build(BuildContext context) {
    var myApp = MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('mostafa app'),
            //backgroundColor: Color.fromARGB(255, 99, 142, 142),
          ),
          body: productmanger("ahmed"),
        ));
    return myApp;
  }
}
