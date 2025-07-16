import 'package:api_tekrar2/models/comment_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class IslemSayfa extends StatefulWidget {
  const IslemSayfa({super.key});

  @override
  State<IslemSayfa> createState() => _IslemSayfaState();
}

class _IslemSayfaState extends State<IslemSayfa> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Future<List<Comment>> getCommentModel() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      var response = await Dio().get(
        "https://jsonplaceholder.typicode.com/users",
      );

      List<Comment> commentList = [];

      if (response.statusCode == 200) {
        commentList = (response.data["comments"] as List).map((gelenMap) {
          return Comment.fromJson(gelenMap);
        }).toList();
      }

      return commentList;
    } on DioException catch (e) {
      return Future.error(e.toString());
    }
  }
}
