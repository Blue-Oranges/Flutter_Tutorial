import 'package:flutter/material.dart';
import '../themes/colors.dart';

class Setting extends StatelessWidget {
  final Widget child;

  Setting({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting' ,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
      //backgroundColor: Colors.white,
      elevation: 0.0,
      ),
      body:SingleChildScrollView( //解决界面溢出导致的bug
        child:Column(
          children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            //alignment: Alignment.center,
            //width: 350,
            height: 360,
            color: getRandomColor(),
            child: Card(
              color: getRandomColor(),
              child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Setting Comment',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                Divider(color: Colors.white,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.backup),
                      onPressed: (){},
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.cloud_download),
                      onPressed: (){},
                    )
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.settings_applications),
                  title: Text('主题设置'),
                  onTap: (){},
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('状态栏与通知'),
                  onTap: (){},
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('用户信息修改'),
                  onTap: (){},
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  leading: Icon(Icons.settings_applications),
                  title: Text('更多设置'),
                  onTap: (){},
                  trailing: Icon(Icons.navigate_next),
                ),
              ],
            )
          )
        ),
         Container(
            margin: EdgeInsets.only(left:20.0,right: 20.0),
            padding: EdgeInsets.all(20.0),
            //alignment: Alignment.center,
            width: 350,
            height: 360,
            color: getRandomColor(),
            child: Card(
              child: ListTile(
                title: Text('关于',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18.0),textAlign: TextAlign.center,),
                subtitle: Text('本软件只是用于Flutter组件学习的Demo！')
              ),
            )
         )
        ],
      )
      )
    );
  }
}