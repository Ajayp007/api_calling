import 'package:api_calling/screen/post/model/post_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  List<PostModel>? postList = [];

  Future<void> getPostApi() async {
    ApiHelper apiHelper = ApiHelper();
    postList = await apiHelper.getAPI();
    notifyListeners();
  }
}
