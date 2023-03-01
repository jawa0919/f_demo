import 'dart:async';

import 'package:flutter/material.dart';

import 'web_support.dart';

class Demo01Page extends StatefulWidget {
  const Demo01Page({super.key});

  @override
  State<Demo01Page> createState() => _Demo01PageState();
}

class _Demo01PageState extends State<Demo01Page> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      windowHistoryLength();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo1")),
      body: Container(
        color: Colors.red,
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
                "Web for IOS上键盘点击“完成”按钮，之后再呼出键盘，会导致页面被超额顶起，请尝试解决。",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.black),
              )
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                margin: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                constraints: const BoxConstraints(maxWidth: 200),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ))
        ]),
      ),
    );
  }
}
