import 'package:flutter/material.dart';
class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:LinearProgressIndicatorDemo()),
    );
  }
}
class LinearProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: LinearProgressIndicator(),
    );
  }
}