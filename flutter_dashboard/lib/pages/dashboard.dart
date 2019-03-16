import 'package:flutter/material.dart';
import './menu_bar.dart';
import './bulletin_board.dart';
import './trivial_details.dart';
import './bolgs.dart';
import './news.dart';
import './setting.dart';
import 'dart:ui';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    double width =MediaQuery.of(context).size.width;
    bool isFolded = width <= 550;
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

      drawer: Drawer(
        //毛玻璃特效未完成，待重写
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.5)
            ),
            child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
            userHeader,
            ListTile(title: Text('Home'),
            leading: CircleAvatar(child: Icon(Icons.home,),),
            onTap: (){Navigator.pop(context);},
            ),
            Divider(color: Colors.black26,),
            ListTile(title: Text('News'),
            leading: CircleAvatar(child: Icon(Icons.new_releases,),),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => News()));},
            ),
            Divider(color: Colors.black26,),
            ListTile(title: Text('Blogs'),
            leading: CircleAvatar(child: Icon(Icons.book,),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Blogs()));
              }
            ),
            Divider(color: Colors.black26,),
            ListTile(title: Text('Setting'),
            leading: CircleAvatar(child: Icon(Icons.settings,),),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Setting()));},
            ),
            Divider(color: Colors.black26,),
          ],
        ),
        ),
        ),
      ),
    );
  }
}
Widget userHeader = UserAccountsDrawerHeader(
    accountName: Text('DashBoard',style: TextStyle(fontWeight: FontWeight.bold),),
    accountEmail: Text('Email：ckjbug@gmail.com'),
    currentAccountPicture: CircleAvatar(
      backgroundImage: AssetImage('images/li.jpg'),
      //backgroundColor: Colors.pink,
      radius: 35.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/bg.png')
        ),
        //color: Colors.black26,
      ),
    );