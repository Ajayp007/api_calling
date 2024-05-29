import 'package:api_calling/screen/todos/model/todos_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class TodosProvider with ChangeNotifier
{
  List<TodosModel>? todosList = [];

  Future<void> getTodosApi()
  async {
    ApiHelper helper = ApiHelper();
    todosList = await helper.getTodosAPI();
    notifyListeners();
  }
}