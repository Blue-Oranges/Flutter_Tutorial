//复制极客时间首页的F12中的Headers信息：F12-点击Clear-刷新页面-找到请求页面加载的信息Network-找到XHR（XMLHttpRequest）-找到newAll（所有新加载的信息）-找到Headers-找到Request Headers-复制下面所有信息，主要是Cookie信息-然后去homePage中请求方法中添加Headers信息：dio.options.headers =httpHeaders;
//XHR： XMLHttpRequest 是一种浏览器API，可以同步或异步地返回 Web 服务器的响应，并且能够以文本或者一个 DOM 文档的形式返回内容。https://www.cnblogs.com/syfwhu/p/6116323.html
//申明请求头常量，一堆Json格式的数据              
const httpHeaders = {
  'Accept': 'application/json, text/plain, */*',
  'Accept-Encoding': 'gzip, deflate, br',
  'Accept-Language': 'en,zh-CN;q=0.9,zh;q=0.8',
  'Connection': 'keep-alive',
  //'Content-Length': '2',
  'Content-Type': 'application/json',
  'Cookie': '_ga=GA1.2.816816542.1550906865; _gid=GA1.2.1907966151.1550906865; GCID=736118d-20c7ae8-4e3c054-093ba6d; GCESS=BAgBAwwBAQkBAQQEgFEBAAsCBAAKBAAAAAAHBCTNakoBBKjEEgAGBMGzfoACBOX2cFwFBAAAAAADBOX2cFw-; Hm_lvt_022f847c4e3acd44d4a2481d9187f1e6=1550906865,1550907108; _gat=1; SERVERID=3431a294a18c59fc8f5805662e2bd51e|1550907552|1550906867; Hm_lpvt_022f847c4e3acd44d4a2481d9187f1e6=1550907550',
  'Host': 'time.geekbang.org',
  'Origin': 'https://time.geekbang.org',
  'Referer': 'https://time.geekbang.org/',
  'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'
};

//按住Alt键选中多行光标
//HTTP请求头Headers及其作用详解:https://blog.csdn.net/tangxiujiang/article/details/79664710
