import 'package:flutter/material.dart';

class products extends StatelessWidget {
  List<String> _p;
  products(this._p);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: _p
              .map((text) => Card(
                    child: Column(children: <Widget>[
                      Image.asset('assets/1.jpg', height: 150),
                      Text(text,style: TextStyle(fontSize: 20),),

                    ]),
                  ))
              .toList()),
    );
  }
}
