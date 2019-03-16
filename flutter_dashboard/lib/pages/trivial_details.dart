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
                  child: Text('This is Data UI'),
                ),
              ),
              Text('功不唐捐',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    );
  }
}