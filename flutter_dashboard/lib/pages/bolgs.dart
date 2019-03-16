import 'package:flutter/material.dart';
import '../themes/colors.dart';

class Blogs extends StatelessWidget {
  final Widget child;

  Blogs({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('Blogs' ,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
      //backgroundColor: Colors.white,
      elevation: 0.0,
      ),
      body:SingleChildScrollView( //解决界面溢出导致的bug
        child:Column(
        children: <Widget>[
          Card(
            color: getRandomColor(),
            child: Column(
              children: <Widget>[
                Image.asset('images/img1.png'),
                ListTile(
                  leading: Icon(Icons.phone_iphone),
                        title: Text('Coding The World!'),
                        subtitle: Text('通过代码让世界变得更美好！'),
                        trailing: Card(
                          color: Colors.white,
                          borderOnForeground: true,
                          margin: EdgeInsets.all(5.0),
                          child: Image.asset('images/ico2.ico',width: 40.0,height: 40.0,fit: BoxFit.fill,),
                        ),
                        onTap: (){},
                )
              ],
            )

          ),
          Card(
            color: getRandomColor(),
            child: Column(
              children: <Widget>[
                Image.asset('images/img6.png'),
                ListTile(
                        leading: Icon(Icons.code),
                        title: Text('Coding The World!'),
                        subtitle: Text('通过代码让世界变得更美好！'),
                        trailing: Card(
                          color: Colors.white,
                          borderOnForeground: true,
                          margin: EdgeInsets.all(5.0),
                          child: Image.asset('images/ico0.ico',width: 40.0,height: 40.0,fit: BoxFit.fill,),
                        ),
                        onTap: (){},
                )
              ],
            )
          ),
          Card(
            color: getRandomColor(),
            child: Column(
              children: <Widget>[
                Image.asset('images/img7.png'),
                ListTile(
                  leading: Icon(Icons.computer),
                        title: Text('Coding The World!'),
                        subtitle: Text('通过代码让世界变得更美好！'),
                        trailing: Card(
                          color: Colors.white,
                          borderOnForeground: true,
                          margin: EdgeInsets.all(5.0),
                          child: Image.asset('images/ico1.ico',width: 40.0,height: 40.0,fit: BoxFit.fill,),
                        ),
                        onTap: (){},
                )
              ],
            )
          ),
          Card(
            color: getRandomColor(),
            child: Column(
              children: <Widget>[
                Image.asset('images/img8.png'),
                ListTile(
                  leading: Icon(Icons.keyboard),
                        title: Text('Coding The World!'),
                        subtitle: Text('通过代码让世界变得更美好！'),
                        trailing: Card(
                          color: Colors.white,
                          borderOnForeground: true,
                          margin: EdgeInsets.all(5.0),
                          child: Image.asset('images/ico3.ico',width: 40.0,height: 40.0,fit: BoxFit.fill,),
                        ),
                        onTap: (){},
                )
              ],
            )
          )
        ],
      )
      )
    );
  }
}