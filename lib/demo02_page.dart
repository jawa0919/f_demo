import 'package:flutter/material.dart';

class Demo02Page extends StatelessWidget {
  const Demo02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                "Web 使用 WillPopScope组件时，会引起右滑返回上一页操作出现几秒白屏问题，请尝试解决。",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.black),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
