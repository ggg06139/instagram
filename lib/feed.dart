import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed(
      {Key? key,
      required this.feedImage,
      required this.feedContent,
      required this.feedFavorite,
      required this.feedComment})
      : super(key: key);

  final String feedImage;
  final String feedContent;
  final int feedFavorite;
  final int feedComment;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  // 좋아요 여부
  bool isFavorite = false;
  // 좋아요
  int favorite = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 5.0, bottom: 2.0, left: 7.0, right: 7.0),
                child: Image.asset(
                  "assets/main_user.png",
                  height: 45,
                ),
              ),
              Text(
                'Princess.__.lee',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                iconSize: 18,
                icon: Icon(CupertinoIcons.ellipsis, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          Image.asset(
            widget.feedImage,
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                icon: isFavorite
                    ? Icon(
                        CupertinoIcons.heart,
                        color: Colors.black,
                      )
                    : Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.red,
                      ),
                onPressed: () {
                  setState(() {
                    if (isFavorite) {
                      favorite = 1;
                    } else {
                      favorite = 0;
                    }
                    isFavorite = !isFavorite;
                  });
                },
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
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "좋아요 ${widget.feedFavorite + favorite}개",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
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
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.feedContent,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "댓글 ${widget.feedComment}개 모두 보기",
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
