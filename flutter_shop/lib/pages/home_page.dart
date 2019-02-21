import 'package:flutter/material.dart';
import 'package:dio/dio.dart';//引入dio包

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController typeController =TextEditingController();
  String  showText = '欢迎来到美好人间';
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Scaffold(
         appBar: AppBar(title: Text('美好人间'),),
         body:SingleChildScrollView(
           child: Container(
           height: 1000,
           child: Column(//采用纵向布局
            children: <Widget>[
              TextField(//文本框
                controller: typeController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  labelText: '所搜类型:',
                  helperText: '请输入喜欢的类型!'
                ),
                autofocus: false,
              ),
              RaisedButton(
                onPressed:
                _choiceAction,
                child: Text('选择完毕'),
              ),
              Text(
                showText,
                overflow: TextOverflow.ellipsis,//超出文本处理：显示省略号
                maxLines: 2,
              )
            ],
           ),
         ),
         )
       ),
    );
  }

  void _choiceAction(){
    print('开始选择你喜欢的类型！');//Test:控制台打印
    if (typeController.text.toString()=='') { //判断输入是否为空
      showDialog(
        context: context,
        builder: (context)=>AlertDialog(title: Text('类型不能为空！'))//匿名方法提示 输入不能为空
      );
    }
    else{
      getHttp(typeController.text.toString()).then((val){
        setState(() {
         showText =val['data']['name'].toString();
        });
      }); //Future对象的then()可以调用里面的回调方法
    }
  }

  Future getHttp(String TypeText) async{
    try {
      Response response;
      var data = {'name':TypeText};
      response =await Dio().get("https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian",
        queryParameters: data
      );
      return response.data;
    } catch (e) {
      return print(e);
    }

  }
}

/* 05代码
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getHttp();
    return Scaffold(
      body: Center(child:Text('商城首页')),
    );
  }

  //Test：测试，通过dio获取Easy Mock上面的数据
  void getHttp() async{
    try {
      Response response;
      response =await Dio().get("https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=长腿小姐姐");
      return print(response);
    } catch (e) {
      return print(e);
    }
  }

}
*/