import 'package:flutter/material.dart';
import '../themes/colors.dart';
class TrivialDetails extends StatelessWidget {
  final isFolded;
  TrivialDetails({this.isFolded});
  @override
  Widget build(BuildContext context) {
    return isFolded ? Container() : _bulidLayout();
  }
  Widget _bulidLayout(){
    return Expanded(
        child : ListView(
        children: <Widget>[
          Container(
            child: Text('This is DashBoard UI',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600),),
            margin: EdgeInsets.only(top: 20.0),
            height: 300.0,
            decoration: BoxDecoration(
              color: getRandomColor(),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             Container(
              width: 120,
              height: 80.0,
              decoration: BoxDecoration(
              color: getRandomColor(),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
            Container(
              width: 120,
              height: 80.0,
              decoration: BoxDecoration(
              color: getRandomColor(),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
          ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                child: Card(
                  margin: EdgeInsets.only(top:20.0),
                  color: getRandomColor(),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.home),
                    onPressed: (){},
                  )
                ),
              ),
              Text('天道酬勤',style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                width: 300,
                height: 300,
                child: Card(
                  margin: EdgeInsets.only(top:20.0),
                  color: getRandomColor(),
                  child: Column(
                    children: <Widget>[
                      Text('This is Data UI',textAlign: TextAlign.center,),
                      Table(
                        border: TableBorder.all(color: Colors.white),
                        children: [
                          TableRow(
                            children: [
                              Container(
                                color: getRandomColor(),
                                width: 50,
                                height: 50,
                              ),
                              Container(
                                color: getRandomColor(),
                                width: 50,
                                height: 50,
                              ),
                            ]
                          ),
                          TableRow(
                            children: [
                              Container(
                                color: getRandomColor(),
                                width: 50,
                                height: 50,
                              ),
                              Container(
                                color: getRandomColor(),
                                width: 50,
                                height: 50,
                              ),
                            ]
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              ),
              Text('功不唐捐',style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                width: 300,
                height: 300,
                child: Card(
                  margin: EdgeInsets.only(top:20.0),
                  color: getRandomColor(),
                  child: MyFadeIn()
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class MyFadeIn extends StatefulWidget {
  final Widget child;

  MyFadeIn({Key key, this.child}) : super(key: key);

  _MyFadeInState createState() => _MyFadeInState();
}
class _MyFadeInState extends State<MyFadeIn> with SingleTickerProviderStateMixin{ //使用FadeTransition小部件实现简单的转场（淡入淡出效果）
  AnimationController _controller;
  Animation _animation;
  @override
  void initState(){
    _controller =AnimationController(
      vsync: this,
      duration: Duration(seconds: 8),
    );
    _animation =Tween(
      begin: 0.0,
      end: 1.0
    ).animate(_controller);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _animation,
      child: Card(color: Colors.lightBlue,margin: EdgeInsets.all(10.0),)
    );
  }
}