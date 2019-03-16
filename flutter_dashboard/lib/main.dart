import 'package:flutter/material.dart';
import './pages/dashboard.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build of MyApp');
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Dashboard Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Dashboard(),
      ),
    );
  }
}