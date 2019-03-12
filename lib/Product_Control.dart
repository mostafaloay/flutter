import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final  Function _updatetheproduct;
  ProductControl(this._updatetheproduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Text("Add Proudct"),
      onPressed: () {
        _updatetheproduct("update");
      },
    );
  }
}
