import 'package:flutter/material.dart';
import 'package:dio/dio.dart';//引入dio包
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