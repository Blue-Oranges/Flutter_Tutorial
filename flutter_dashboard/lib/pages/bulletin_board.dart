import 'package:flutter/material.dart';
import '../themes/colors.dart';

class BulletinBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Container(
        color: lightGrey,
        padding: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
        child:ListView.separated(
        itemBuilder: (BuildContext context,int index){
        return Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img' + index.toString() + '.png'),
                fit: BoxFit.fill
              ),
              color: getRandomColor(),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context,int index){
        return SizedBox(height: 30.0,);
      },
      itemCount: 9,
      )
      )
    );

  }
}