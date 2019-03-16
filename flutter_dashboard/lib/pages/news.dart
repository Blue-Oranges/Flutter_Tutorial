import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../themes/colors.dart';
import './dashboard.dart';

class News extends StatelessWidget {
  final Widget child;

  News({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('News' ,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
      //backgroundColor: Colors.white,
      elevation: 0.0,
      ),
      body:SingleChildScrollView( //解决界面溢出导致的bug
        child:Column(
        children: <Widget>[
          SwiperDiy(),
          Text('新闻头条',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27.0),),
          Container(
                padding: EdgeInsets.all(10.0),
                width: 550,
                height: 240,
                child : Card(
                  margin: EdgeInsets.only(top:10.0),
                  clipBehavior: Clip.none,
                  color: getRandomColor(),
                  child: Column(
                    children: <Widget>[
                      Text('Card1 News Comment',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Divider(color: Colors.white,),
                      userHeader,
                    ],
                  ) 
              ),
              ),
          Container(
                padding: EdgeInsets.all(10.0),
                width: 550,
                height: 240,
                child : Card(
                  margin: EdgeInsets.only(top:10.0),
                  color: getRandomColor(),
                  child: SingleChildScrollView(
                  child:Column(
                    children: <Widget>[
                      Text('Card2 News Comment',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Divider(color: Colors.white,),
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
                      ),
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
                      ),
                      ListTile(
                        leading: Icon(Icons.mobile_screen_share),
                        title: Text('Coding The World!'),
                        subtitle: Text('通过代码让世界变得更美好！'),
                        trailing: Card(
                          color: Colors.white,
                          borderOnForeground: true,
                          margin: EdgeInsets.all(5.0),
                          child: Image.asset('images/ico2.ico',width: 40.0,height: 40.0,fit: BoxFit.fill,),
                        ),
                        onTap: (){},
                      ),
                    ],
                  ) 
                  )
              ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 550,
                height: 240,
                child : Card(
                  margin: EdgeInsets.only(top:10.0),
                  color: getRandomColor(),
                  child: Column(
                    children: <Widget>[
                      Text('Card3 News Comment',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Divider(color: Colors.white,),
                    ],
                  ) 
              ),
              ),
        ],
      )
      )
    );
  }
}

// 首页轮播组件编写
class SwiperDiy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 320.0,
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.asset('images/img' + index.toString() + '.png',fit: BoxFit.fill,);
        },
        itemCount: 8,
        pagination: new SwiperPagination(),
        autoplay: true,
        onTap:(int){Navigator.pop(context);},
      ),
    );
  }
}