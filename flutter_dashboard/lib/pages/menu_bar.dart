import 'package:flutter/material.dart';
import '../themes/colors.dart';
import './setting.dart';
import './backdrop_filter.dart';

class MenuBar extends StatelessWidget {
  final isFolded;
  MenuBar({this.isFolded});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child:Container(
        color: lightGrey,
        child:Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0)),
        color: Colors.white
        ),
        padding: EdgeInsets.only(top:20.0),
      //color: Colors.lightBlue,
      width: isFolded ? 70.0 : 100.0,
      child: ListView.separated(
      itemBuilder: (BuildContext context,int index){
        return Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            width: 50.0,
            height: 50.0,
            child: IconButton(
              icon: Icon(null),
              tooltip: '按钮被点击！',
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FrostedDemo()));},
            ),
            decoration: BoxDecoration(
              color: getRandomColor(),
              image: DecorationImage(
                image: AssetImage('images/ico' + index.toString() + '.ico')
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context,int index){
        return SizedBox(height: 30.0,);
      },
      itemCount: 5,
      ),
    )
    )
    );
  }
}