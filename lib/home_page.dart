import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "assets/feed0.jpg",
      "assets/feed1.jpg",
      "assets/feed2.jpg",
    ];
    final List<String> contents = [
      "승현아 사랑해♥",
      "넌 지금 어딜 보고 있는 거야",
      "오늘 나 왜 이렇게 예쁘지",
    ];
    final List<int> favorites = [
      912,
      899,
      961,
    ];
    final List<int> comments = [
      531,
      395,
      607,
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.plus_app, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.heart, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/logo3.png',
            height: 32,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          String image = images[index];
          String content = contents[index];
          int favorite = favorites[index];
          int comment = comments[index];

          return Feed(
            feedImage: image,
            feedContent: content,
            feedFavorite: favorite,
            feedComment: comment,
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Image.asset("assets/home_fill.png", width: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Image.asset("assets/search.png", width: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Image.asset("assets/video.png", width: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Image.asset("assets/shop.png", width: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Image.asset("assets/user.png", width: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
