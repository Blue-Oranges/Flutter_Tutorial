import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Container(
          width: 60,
          height: 60,
          child:Icon(Icons.hourglass_empty),
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
        ),
        onPressed: (){print('点击按钮....');},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(height: 50.0,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: AppBar(
        title: Text('毛玻璃UI' ,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
      //backgroundColor: Colors.white,
      elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: FlutterLogo()
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5)
                  ),
                  child: Center(
                    child: Text(
                      'ckjbug',
                      style: Theme.of(context).textTheme.display3
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}