import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  final Color appBarBg = Color.fromARGB(255, 25, 164, 178);
  final Color deliverBg = Color.fromARGB(255, 11, 97, 109);
  final String amazonLogo =
      'https://www.easyicon.net/api/resizeApi.php?id=1230417&size=128';
  final String bannerImg = '';
  final String dealImg = '';

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: bulidAppBar(),
      body: Column(
        children: <Widget>[
        ]
      ),
    );
  }

  Widget bulidAppBar() {
    return AppBar(
      backgroundColor: appBarBg,
      elevation: 0.0,
      leading: Icon(Icons.menu),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Image.network(
          amazonLogo,
          color: Colors.white,
          height: 30.0,
        ),
      ),
      actions: <Widget>[
        Icon(Icons.notifications_none),
        Icon(Icons.camera_alt),
      ],
    );
  }
  Widget buildSearchBar(){
    
  }
}
