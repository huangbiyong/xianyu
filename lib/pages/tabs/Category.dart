import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.black26,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child:TabBar(
                    isScrollable:true,  //如果多个按钮的话可以滑动
                    indicatorColor:Colors.yellow,
                    labelColor:Colors.yellow,
                    unselectedLabelColor: Colors.white,
                    indicatorSize:TabBarIndicatorSize.label ,
                    
                    tabs: <Widget>[
                      Tab(text: "关注"),
                      Tab(text: "推荐"),
                      Tab(text: "热点"),
                      Tab(text: "北京"),
                      Tab(text: "视频"),
                      Tab(text: "直播"),
                      Tab(text: "科技"),
                      Tab(text: "娱乐")
                    ],
               ) ,
              )
            ],
          ),
          
        ),
        body:TabBarView(
          children: <Widget>[

            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第一个tab")
                  ),
                  ListTile(
                    title:Text("第一个tab")
                  ),
                  ListTile(
                    title:Text("第一个tab")
                  )
                ],
              ),
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第三个tab")
                  ),
                  ListTile(
                    title:Text("第三个tab")
                  ),                 
                ],
              ),
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第四个tab")
                  ),
                  ListTile(
                    title:Text("第四个tab")
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第五个tab")
                  ),
                  ListTile(
                    title:Text("第五个tab")
                  ),
                ],
              ),
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第六个tab")
                  ),
                  ListTile(
                    title:Text("第六个tab")
                  ),                  
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第七个tab")
                  ),
                  ListTile(
                    title:Text("第七个tab")
                  )
                ],
              ),
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第八个tab")
                  ),
                  ListTile(
                    title:Text("第八个tab")
                  )
                ],
              )
          ],
        )
      ),
    );
  }
}