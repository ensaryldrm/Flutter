import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyInstagramProject());
}

class MyInstagramProject extends StatelessWidget {
  const MyInstagramProject({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İnstagram Clone"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: MyStorySection(),
    );
  }
}

class MyStorySection extends StatelessWidget {
  const MyStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      "https://geediting.com/wp-content/uploads/2023/12/newimagesize-2023-04-02T192008.840.png",
      "https://upload.wikimedia.org/wikipedia/commons/a/a0/Andrzej_Person_Kancelaria_Senatu.jpg",
      "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "https://www.jamsadr.com/images/neutrals/person-donald-900x1080.jpg",
      "https://www.yourtango.com/sites/default/files/image_blog/2024-10/signs-genuinely-kind-person-cant-be-faked.png",
      "https://media.proprofs.com/images/QM/user_images/2503852/New%20Project%20(23)(81).jpg",
      "https://i.pinimg.com/564x/1f/9b/19/1f9b193d0c135526830c3878afa388e1.jpg",
      "https://www.yourtango.com/sites/default/files/image_blog/psychologically-healthy-person.png",
      "https://www.jordanharbinger.com/wp-content/uploads/2018/09/be-the-most-interesting-360x360.jpg",
    ];
    List<int> randomNumber = [];
    Random r = Random();
    for (int i = 0; i < imageList.length; i++) {
      int sayi = r.nextInt(9);
      randomNumber.add(sayi);
    }
    return Column(
      children: [
        Container(
          height: 100,
          width: 450,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Row(
                  children: [
                    Story(imageUrl: imageList[randomNumber[0]]),
                    Story(imageUrl: imageList[randomNumber[1]]),
                    Story(imageUrl: imageList[randomNumber[2]]),
                    Story(imageUrl: imageList[randomNumber[3]]),
                    Story(imageUrl: imageList[randomNumber[4]]),
                    Story(imageUrl: imageList[randomNumber[5]]),
                    Story(imageUrl: imageList[randomNumber[6]]),
                    Story(imageUrl: imageList[randomNumber[7]]),
                    Story(imageUrl: imageList[randomNumber[3]]),
                    Story(imageUrl: imageList[randomNumber[6]]),
                    Story(imageUrl: imageList[randomNumber[7]]),
                    Story(imageUrl: imageList[randomNumber[0]]),
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(),
        //Expanded(child: PostPage()), // Bütün sayfayı doldurdu. Bunun yerine PostPage içine height de verilebilirdi.
        PostPage(),
      ],
    );
  }
}

class Story extends StatelessWidget {
  const Story({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          //opacity: 0.4, //Fotoğraafı silinik gösteriyor.
          fit: BoxFit.cover,
        ),
      ),
      //alignment: Alignment.center,//Texti ortaladık.
      //child: Text("e"),//Resmin üzerine yazı yazmamızı sağlar.
    );
  }
}

class PostPage extends StatelessWidget {
  const PostPage({super.key});
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> post1 = {
      "imgUrl": "resimler/p1.png",
      "lc": 2342,
      "cc": 1230,
      "pc": 120,
    };

    Map<String, dynamic> post2 = {
      "imgUrl": "resimler/p2.png",
      "lc": 23540,
      "cc": 160,
      "pc": 240,
    };

    Map<String, dynamic> post3 = {
      "imgUrl": "resimler/p3.png",
      "lc": 200,
      "cc": 155,
      "pc": 360,
    };

    Map<String, dynamic> post4 = {
      "imgUrl": "resimler/p4.png",
      "lc": 2670,
      "cc": 110,
      "pc": 480,
    };

    Map<String, dynamic> post5 = {
      "imgUrl": "resimler/p5.png",
      "lc": 23500,
      "cc": 1230,
      "pc": 550,
    };
    List<Map> postList = [];
    postList.add(post1);
    postList.add(post2);
    postList.add(post3);
    postList.add(post4);
    postList.add(post5);

    return Container(
      color: Colors.white,
      height: 700,
      child: SingleChildScrollView(
        //SingleChildScrollView ya colum ya da row sarmalı.
        child: Column(
          children: [
            MySharePost(
              imageUrl: postList[0]["imgUrl"],
              likeCount: postList[0]["lc"],
              commentCount: postList[0]["cc"],
              shareCount: postList[0]["pc"],
              isLike: true,
            ),
            MySharePost(
              imageUrl: postList[1]["imgUrl"],
              likeCount: postList[1]["lc"],
              commentCount: postList[1]["cc"],
              shareCount: postList[1]["pc"],
            ),
            MySharePost(
              imageUrl: postList[2]["imgUrl"],
              likeCount: postList[2]["lc"],
              commentCount: postList[2]["cc"],
              shareCount: postList[2]["pc"],
            ),
            MySharePost(
              imageUrl: postList[3]["imgUrl"],
              likeCount: postList[3]["lc"],
              commentCount: postList[3]["cc"],
              shareCount: postList[3]["pc"],
            ),
            MySharePost(
              imageUrl: postList[4]["imgUrl"],
              likeCount: postList[4]["lc"],
              commentCount: postList[4]["cc"],
              shareCount: postList[4]["pc"],
            ),
          ],
        ),
      ),
    );
  }
}

class MySharePost extends StatelessWidget {
  final int likeCount;
  final int commentCount;
  final int shareCount;
  final String imageUrl;
  final bool isLike;

  const MySharePost({
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.imageUrl,
    this.isLike = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.blue,
              child: Image.asset(imageUrl, fit: BoxFit.cover),
            ),
            Container(
              height: 65,
              color: Colors.white,
              child: Row(
                children: [
                  //Like and like count text
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        isLike
                            ? Icon(Icons.favorite, size: 30, color: Colors.red)
                            : SizedBox(width: 4),
                        Text(
                          "$likeCount",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Comment and comment text
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.comment, size: 20),
                        SizedBox(width: 4),
                        Text(
                          "$commentCount",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Share icon and text
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.share, size: 20),
                        SizedBox(width: 4),
                        Text(
                          shareCount.toString(),
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  //Bookmark
                  Container(
                    margin: EdgeInsets.only(right: 9),
                    child: Row(
                      children: [Icon(Icons.bookmark_add_outlined, size: 28)],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
