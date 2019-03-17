import 'package:flutter/material.dart';
import 'package:flutter_app/Product_Control.dart';
import 'package:flutter_app/products.dart';

class productmanger extends StatefulWidget {
  @override
  String text;
  productmanger(this.text);
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return productmangerstate();
  }
}

class productmangerstate extends State<productmanger> {
  List<String> _p = [];

  @override
  void initState() {
    //_p.add(widget.text);
    super.initState();
  }

  @override
  void didUpdateWidget(productmanger oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  build(BuildContext context) {
    return Column(children: <Widget>[
      Container(margin: EdgeInsets.all(10),
          child: ProductControl(updatetheproduct)),
      Expanded(child: Container(child: products(_p))) //seperated class card
    ]);
  }

  void updatetheproduct(String product){
    setState(() {
      _p .add(product);
    });
  }
}
