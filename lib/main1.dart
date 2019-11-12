/*
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ItemEntity> entityList = [];
  ScrollController _scrollController = ScrollController();
  bool isLoadData = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        print("--------加载更多----------");
        _getMoreData();
      }
    });
    for (int i = 0;i<10;i++) {
      entityList.add(ItemEntity("Item $i", Icons.accessibility));
    }
  }

  Future<Null> _getMoreData() async {
    await Future.delayed(Duration(seconds: 2),(){//模拟延时操作
      if(!isLoadData) {
        isLoadData  = true;
        setState(() {
          isLoadData = false;
          List<ItemEntity> newList = List.generate(5, (index) =>
          ItemEntity("上拉加载-----Item ${index + entityList.length}",Icons.accessibility));
          entityList.addAll(newList);
        });
      }
    });
  }

  Future<Null> _handlerRefresh() async {
    print("-------开始刷新-------");
    await Future.delayed(Duration(seconds:2),(){
      //模拟延时
      setState(() {
        entityList.clear();
        entityList = List.generate(10, (index)=>
        ItemEntity("下拉啥刷新后--item $index",Icons.accessibility));
        return null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter进阶之旅",
            ),
          ),
          body: RefreshIndicator(
            displacement: 50,
            color: Colors.redAccent,
            backgroundColor: Colors.blue,
            child: ListView.builder(
              itemBuilder: (BuildContext context,int index) {
                if(index == entityList.length) {
                  return LoadMoreView();
                } else {
                  return ItemView(entityList[index]);
                }
              },
              itemCount: entityList.length+1,
              controller: _scrollController,
            ),
            onRefresh: _handlerRefresh,
          )
      ),
    );
  }
}

*/
/**
 * 渲染Item的实体
 *//*

class ItemEntity{
  String title;
  IconData iconData;

  ItemEntity(this.title, this.iconData);
}

*/
/**
 * ListView builder生成的Item布局，读者可类比成原生Android的Adapter的角色
 *//*


class ItemView extends StatelessWidget{
  ItemEntity itemEntity;

  ItemView(this.itemEntity);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Text(itemEntity.title,
          style: TextStyle(color: Colors.black87),),
          Positioned(
            child: Icon(
              itemEntity.iconData,
              size: 30,
              color: Colors.blue,
            ),
            left: 5,
          )
        ],
      ),
    );
  }
}


class LoadMoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: Row(children: <Widget>[
          new CircularProgressIndicator(),
          Padding(padding: EdgeInsets.all(10)),
          Text('加载中...')
        ], mainAxisAlignment: MainAxisAlignment.center,),
      ),
    ), color: Colors.white70,);
  }
}*/
