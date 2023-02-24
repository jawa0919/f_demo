import 'package:flutter/material.dart';

class Demo01Page extends StatelessWidget {
  const Demo01Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 100),
                child: const TextField(),
              ))
        ]),
      ),
    );
  }
}
