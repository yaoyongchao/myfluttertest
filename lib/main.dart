import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import './http_util.dart';
import './base_bean.dart';
import './teacher_entity.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter进阶之旅",
            ),
          ),
          body:Container(
            child: OutlineButton(
              child: Text(
                "你好"
              ),
              onPressed: (){
                HttpUtil.get<TeacherEntity>(
                "/MyTest/test",
                success: (data){

                  print("张三-----" + data.backResult);
                },error: (errorMsg){
                  print(errorMsg);
                 }
                );
              },
            ),
          )
      ),
    );
  }
}
