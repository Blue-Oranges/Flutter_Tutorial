import 'package:flutter/material.dart';
import '../themes/colors.dart';

class BulletinBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Container(
        color: lightGrey,
        padding: EdgeInsets.all(20.0),
        child:ListView.separated(
        itemBuilder: (BuildContext context,int index){
        return Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            height: 200.0,
            decoration: BoxDecoration(
              color: getRandomColor(),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context,int index){
        return SizedBox(height: 30.0,);
      },
      itemCount: 3,
      )
        )
    );

  }
}