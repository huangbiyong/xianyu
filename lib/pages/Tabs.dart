
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex;
  _TabsState(index){
    this._currentIndex=index;
  }

  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
               setState(() {  //改变状态
                    this._currentIndex=1;
                });

            },
            backgroundColor: this._currentIndex==1?Colors.red:Colors.yellow,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,   //配置对应的索引值选中
          onTap: (int index){
              setState(() {  //改变状态
                  this._currentIndex=index;
              });
          },
          iconSize:36.0,      //icon的大小
          fixedColor:Colors.red,  //选中的颜色  
          type:BottomNavigationBarType.fixed,   //配置底部tabs可以有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            )
          ],
        ),

        drawer: Drawer(
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName:Text("chase"),
                      accountEmail: Text("xxxxxx@xxxx.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage("https://avatars0.githubusercontent.com/u/16833275?s=40&v=4"),
                      ),
                      decoration:BoxDecoration(                        
                        image: DecorationImage(
                          image: NetworkImage("https://upload.jianshu.io/users/upload_avatars/8533386/c97bc5e2-952b-4fac-b878-f6ae8b674778.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
                          fit:BoxFit.cover,
                        )
                        
                      ),
                     otherAccountsPictures: <Widget>[
                       Image.network("https://upload.jianshu.io/users/upload_avatars/8533386/c97bc5e2-952b-4fac-b878-f6ae8b674778.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
                       Image.network("https://upload.jianshu.io/users/upload_avatars/8533386/c97bc5e2-952b-4fac-b878-f6ae8b674778.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
                     ],
                    )
                  )
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home)
                ),
                title: Text("我的空间"),
              
              ),
              Divider(),
               ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people)
                ),
                title: Text("用户中心"),
                onTap: (){
                  Navigator.of(context).pop();  //隐藏侧边栏
                  Navigator.pushNamed(context, '/user');
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings)
                ),
                title: Text("设置中心"),
              ),
              Divider(),
            ],
          ),


        ),
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),
      );
  }
}