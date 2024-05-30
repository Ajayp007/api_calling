import 'dart:convert';

import 'package:api_calling/screen/albums/model/album_model.dart';
import 'package:api_calling/screen/comments/model/comment_model.dart';
import 'package:api_calling/screen/country/model/country_model.dart';
import 'package:api_calling/screen/news/model/news_model.dart';
import 'package:api_calling/screen/photos/model/photos_model.dart';
import 'package:api_calling/screen/post/model/post_model.dart';
import 'package:api_calling/screen/todos/model/todos_model.dart';
import 'package:api_calling/screen/user/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<List<PostModel>?> getPostAPI() async {
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

  Future<List<CommentModel>?> getCommentsAPI() async {
    String commentApi = "https://jsonplaceholder.typicode.com/comments";
    var response = await http.get(Uri.parse(commentApi));

    if (response.statusCode == 200) {
      List commentsList = jsonDecode(response.body);
      List<CommentModel> c1 = commentsList
          .map(
            (e) => CommentModel.mapToModel(e),
          )
          .toList();
      return c1;
    }
    return null;
  }

  Future<List<AlbumModel>?> getAlbumAPI() async {
    String commentApi = "https://jsonplaceholder.typicode.com/albums";
    var response = await http.get(Uri.parse(commentApi));

    if (response.statusCode == 200) {
      List albumList = jsonDecode(response.body);

      List<AlbumModel> a1 = albumList
          .map(
            (e) => AlbumModel.mapToModel(e),
          )
          .toList();
      return a1;
    }
    return null;
  }

  Future<List<PhotosModel>?> getPhotosAPI() async {
    String photosApi = "https://jsonplaceholder.typicode.com/photos";

    var response = await http.get(Uri.parse(photosApi));

    if (response.statusCode == 200) {
      List photosList = jsonDecode(response.body);

      List<PhotosModel> p1 = photosList
          .map(
            (e) => PhotosModel.mapToModel(e),
          )
          .toList();
      return p1;
    }
    return null;
  }

  Future<List<TodosModel>?> getTodosAPI() async {
    String todos = "https://jsonplaceholder.typicode.com/todos";

    var response = await http.get(Uri.parse(todos));

    if (response.statusCode == 200) {
      List todosList = jsonDecode(response.body);
      List<TodosModel> t1 = todosList
          .map(
            (e) => TodosModel.mapTomodel(e),
          )
          .toList();
      return t1;
    }
    return null;
  }

  Future<List<UserModel>?> getUserAPI() async {
    String user = "https://jsonplaceholder.typicode.com/users";

    var response = await http.get(Uri.parse(user));

    if (response.statusCode == 200) {
      List userList = jsonDecode(response.body);
      List<UserModel> u1 = userList
          .map(
            (e) => UserModel.mapToModel(e),
          )
          .toList();
      return u1;
    }
    return null;
  }

  Future<List<CountryModel>?> getCountryAPI() async {
    String countryString = "https://restcountries.com/v3.1/all";

    var response = await http.get(Uri.parse(countryString));

    if (response.statusCode == 200) {
      List countryList = jsonDecode(response.body);
      List<CountryModel> c1 = countryList
          .map(
            (e) => CountryModel.mapToModel(e),
          )
          .toList();

      return c1;
    }
    return null;
  }

  Future<NewsModel?> getNewsAPI() async {
    String newsString =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=3f9750883a484e5e8b39123579decdbc";

    var response = await http.get(Uri.parse(newsString));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      NewsModel model = NewsModel.mapToModel(json);

      return model;
    }
    return null;
  }
}
