import 'dart:convert';

CommentModel commentModelFromJson(String str) =>
    CommentModel.fromJson(json.decode(str));

String commentModelToJson(CommentModel data) => json.encode(data.toJson());

class CommentModel {
  final List<Comment> comments;
  final int total;
  final int skip;
  final int limit;

  CommentModel({
    required this.comments,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
    comments: List<Comment>.from(
      json["comments"].map((x) => Comment.fromJson(x)),
    ),
    total: json["total"],
    skip: json["skip"],
    limit: json["limit"],
  );

  Map<String, dynamic> toJson() => {
    "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
    "total": total,
    "skip": skip,
    "limit": limit,
  };
}

class Comment {
  final int id;
  final String body;
  final int postId;
  final int likes;
  final User user;

  Comment({
    required this.id,
    required this.body,
    required this.postId,
    required this.likes,
    required this.user,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
    id: json["id"],
    body: json["body"],
    postId: json["postId"],
    likes: json["likes"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "body": body,
    "postId": postId,
    "likes": likes,
    "user": user.toJson(),
  };
}

class User {
  final int id;
  final String username;
  final String fullName;

  User({required this.id, required this.username, required this.fullName});

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    username: json["username"],
    fullName: json["fullName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "fullName": fullName,
  };
}
