import 'package:dio/dio.dart';//导入外部包
import 'dart:async';//导入内部包
import 'dart:io'; //提供下面的ContentType()接口
import '../config/service_url.dart';

//获取首页主题内容
Future getHomePageContent() async{
  try {
    print('开始获取首页数据...........');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =ContentType.parse("application/x-www-form-urlencoded");//从Form表单中获取数据类型
    var formData = {'lon':'115.02932','lat':'35.76189'};//获取经纬度
    response = await dio.post(servicePath['homePageContent'],data:formData);
    if (response.statusCode == 200) {
      return response.data;
    }
    else{
      throw Exception('后端接口出现异常....');
    }
  } catch (e) {
    return print('ERROR:>>>${e}');
  }
}