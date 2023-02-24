import 'package:flutter/material.dart';

class Demo03Page extends StatelessWidget {
  const Demo03Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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
                "Web for IOS 程序无法主动播放音频,如何做到可主动播放音频，请尝试解决。",
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
