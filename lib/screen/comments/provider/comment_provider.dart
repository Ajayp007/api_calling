import 'package:api_calling/screen/comments/model/comment_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class CommentProvider with ChangeNotifier {
  List<CommentModel>? commentList = [];

  Future<void> getCommentsApi() async {
    ApiHelper helper = ApiHelper();
    commentList = await helper.getCommentsAPI();
    notifyListeners();
  }
}
