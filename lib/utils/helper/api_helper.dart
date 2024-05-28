import 'dart:convert';

import 'package:api_calling/screen/post/model/post_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<List<PostModel>?> getAPI() async {
    String postApi = "https://jsonplaceholder.typicode.com/posts";

    var response = await http.get(Uri.parse(postApi));

    if (response.statusCode == 200) {
      List postList = jsonDecode(response.body);
      List<PostModel> p1 = postList
          .map(
            (e) => PostModel.mapTomodel(e),
          )
          .toList();
      return p1;
    }
    return null;
  }
}
