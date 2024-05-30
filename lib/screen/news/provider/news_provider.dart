import 'package:api_calling/screen/news/model/news_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class NewsProvider with ChangeNotifier
{
  ApiHelper helper = ApiHelper();

  NewsModel? model;

  Future<void> getNewsApi()
  async {
    model = await helper.getNewsAPI();
    notifyListeners();
  }
}