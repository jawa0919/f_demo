import 'package:f_demo/web_support.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Demo02Page extends StatelessWidget {
  const Demo02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo2")),
      body: Container(
        constraints: const BoxConstraints(minWidth: double.infinity),
        color: Colors.green,
        child: Stack(children: [
          Column(
            children: const [
              Text(
                "测试页面",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(height: 30),
              Text(
                "Web for IOS使用 WillPopScope 组件时，会引起右滑返回上一页操作出现几秒白屏问题，请尝试解决。",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.black),
              )
            ],
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).webGo("/demo01");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.share),
      ),
    );
  }
}
