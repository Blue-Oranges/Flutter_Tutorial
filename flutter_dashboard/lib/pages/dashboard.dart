import 'package:flutter/material.dart';
import './menu_bar.dart';
import './bulletin_board.dart';
import './trivial_details.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    bool isFolded =width <= 550;
    print('build of dashboard');

    return Scaffold(
      appBar: AppBar(title: Text('Dashboard' ,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
      //backgroundColor: Colors.white,
      elevation: 0.0,
      ),
      body: Row(
        children: <Widget>[
          MenuBar(isFolded: isFolded,),
          BulletinBoard(),
          TrivialDetails(isFolded:isFolded,)                                         
        ],
      ),
    );
  }
}