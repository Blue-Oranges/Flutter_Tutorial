import 'package:flutter/material.dart';
import '../themes/colors.dart';

class ComponentDemo extends StatelessWidget {
  final Widget child;

  ComponentDemo({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset('images/bg.png',fit: BoxFit.fill,),
          ),
          title: Text('SliverAppBar', style: TextStyle(fontWeight: FontWeight.bold)),
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.flight,size: 50.0,),
            onPressed: (){Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.flight_land,),alignment: Alignment.topRight,color: Colors.white,onPressed: (){},iconSize: 50.0,)
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                width: 50.0,
                child:Card(
                  color:getRandomColor()
                )
              ),
            ]
          ),
        ),
      ],
    );
  }
}