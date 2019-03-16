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
          )
        ],
      ),
    );
  }
}