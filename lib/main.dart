import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo2.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지
          Image.asset(
            "assets/minyeo.jpg",
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(CupertinoIcons.heart, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),

          // 좋아요
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "좋아요 921개",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // 아이디
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    "princess.__.lee",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // 설명
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "승현아 사랑해♥",
                  ),
                ),
              ],
            ),
          ),

          // 날짜
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "댓글 581개 모두 보기",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
