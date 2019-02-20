import 'package:flutter/material.dart';//Google设计的材质设计规范，统一各大平台的设计风格
import 'package:flutter/cupertino.dart';//iOS设计风格
import 'home_page.dart';
import 'category_page.dart';
import 'cart_page.dart';
import 'member_page.dart';

//动态页面 快捷键：stlful
class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  //底部栏对象
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页')
    ),
        BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类')
    ),
        BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车')
    ),
        BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员中心')
    ),
  ];
  
  //四个页面对象
  final List tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  //当前页面索引
  int currentIndex = 0;

  //当前页面对象
  var currentPage;

  @override
   //初始化默认页面 快捷键：init
  void initState() { 
    currentPage =tabBodies[currentIndex];
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold( //Scaffold：脚手架，已经搭建好的布局或框架
    
      backgroundColor: Color.fromRGBO(244, 255, 255, 1.0),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex=index;
            currentPage =tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}

/*StatelessWidget：静态组件
class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("百姓生活+")),
      body:Center(
        child: Text("百姓生活+"),
      )
    );
  }
}
*/
