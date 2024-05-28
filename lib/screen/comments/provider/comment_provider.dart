// import 'package:flutter/material.dart';
//
//
// import '../model/comment_model.dart';
//
// class CommentProvider with ChangeNotifier
// {
//   List<CommentModel> commentList =[];
//
//   Future<void> getJson()
//   async {
//     JsonHelper helper = JsonHelper();
//     commentList = await helper.commentJson();
//     notifyListeners();
//   }
// }