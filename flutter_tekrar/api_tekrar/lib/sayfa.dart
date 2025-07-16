import 'package:api_tekrar/model/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Sayfa extends StatefulWidget {
  const Sayfa({super.key});

  @override
  State<Sayfa> createState() => _SayfaState();
}

class _SayfaState extends State<Sayfa> {
  late Future<List<PostModel>> postList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postList = getPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100,
        title: Text("API İşlem"),
      ),
      body: Center(
        child: FutureBuilder<List<PostModel>>(
          future: postList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var myPostList = snapshot.data!;
              return ListView.builder(
                itemCount: myPostList.length,
                itemBuilder: (context, index) {
                  var post = myPostList[index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.userId.toString()),
                    leading: CircleAvatar(
                      radius: 48,
                      child: Text(post.id.toString()),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<PostModel>> getPostList() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      var response = await Dio().get(
        "https://jsonplaceholder.typicode.com/posts",
      );
      List<PostModel> postList = [];
      if (response.statusCode == 200) {
        postList = (response.data as List).map((gelenMap) {
          return PostModel.fromJson(gelenMap);
        }).toList();
      }
      return postList;
    } on DioException catch (e) {
      return Future.error(e.toString());
    }
  }
}
