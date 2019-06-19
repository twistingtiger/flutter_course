import 'package:flutter/material.dart';

import './products.dart';

class ProdManager extends StatefulWidget {
  final String startProd;

  ProdManager({this.startProd = 'Sweets Tester'}){
    print('[ProdManager] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProdManager] createState');
    return _ProdManager();
  }
}

class _ProdManager extends State<ProdManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[_ProdManager] initState');
    _products.add(widget.startProd);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('[_ProdManager] build()');
    return  Column(children: [Container(
    margin: EdgeInsets.all(12.0) ,
    child: RaisedButton(
      color: Theme.of(context).primaryColor,
    onPressed: () {
    setState(() {
    _products.add('Advanced Food Tester');
    });
    },
    child: Text('Add Product'),
    ),
    ),
    Products(_products)
    ],
    );
  }
}