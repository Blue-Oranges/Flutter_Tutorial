import "package:flutter/material.dart";
 void main(){
runApp(MyApp());
 }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget userHeader =UserAccountsDrawerHeader(
      accountName: Text('ckjbug'),
      accountEmail: Text('ckjbug@gmail.com'),
      currentAccountPicture: CircleAvatar(
        //backgroundColor: Colors.lightBlue,
        backgroundImage: AssetImage('images/li.jpg'),
        radius: 35.0,
      ),
    );
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('ckjbug'),),
          body: Center( 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.insert_emoticon),
                Icon(Icons.keyboard),
                Icon(Icons.home),
                Text('ckjbug',style: TextStyle(color: Colors.red),)
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                userHeader,
                ListTile(title: Text('首页'),
                leading: CircleAvatar(child: Icon(Icons.home),),
                onTap: (){
                  Navigator.pop(context);
                },
                ),
                Divider(color: Colors.black12,),
                ListTile(title: Text('新闻'),
                leading: CircleAvatar(child: Icon(Icons.new_releases),),
                onTap: (){
                  Navigator.pop(context);
                },),
                Divider(color: Colors.black12,),
                ListTile(title: Text('博客'),
                leading: CircleAvatar(child: Icon(Icons.dashboard),),
                onTap: (){
                  Navigator.pop(context);
                },),
                
              ],
            ),
          ),
        ),
        theme: ThemeData(primaryColor: Colors.redAccent),
      ),
    );
  }
}