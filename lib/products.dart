import 'package:flutter/material.dart';

class products extends StatelessWidget {
  List<String> _p;
  products(this._p);

  Widget buildListItmeContext(BuildContext context, int index) {
    return Card(
      child: Column(children: <Widget>[
        Image.asset('assets/1.jpg'),
        Text(
          _p[index],
          style: TextStyle(fontSize: 20),
        ),
      ]),
    );
  }

  Widget GenerateList() {
    return _p.length > 0
        ? Center(
            child: ListView.builder(
            itemBuilder: buildListItmeContext,
            itemCount: _p.length,
          ))
        : Center(
            child: Text(
              "No Content !",
              style: TextStyle(fontSize: 20),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return GenerateList();
  }
}
