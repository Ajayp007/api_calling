import 'package:api_calling/screen/albums/provider/album_provider.dart';
import 'package:api_calling/screen/comments/provider/comment_provider.dart';
import 'package:api_calling/screen/country/provider/country_provider.dart';
import 'package:api_calling/screen/news/provider/news_provider.dart';
import 'package:api_calling/screen/photos/provider/photos_provider.dart';
import 'package:api_calling/screen/post/provider/post_provider.dart';
import 'package:api_calling/screen/todos/provider/todos_provider.dart';
import 'package:api_calling/screen/user/provider/user_provider.dart';
import 'package:api_calling/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: PostProvider(),
        ),
        ChangeNotifierProvider.value(
          value: CommentProvider(),
        ),
        ChangeNotifierProvider.value(
          value: AlbumProvider(),
        ),
        ChangeNotifierProvider.value(
          value: PhotosProvider(),
        ),
        ChangeNotifierProvider.value(
          value: TodosProvider(),
        ),
        ChangeNotifierProvider.value(
          value: UserProvider(),
        ),
        ChangeNotifierProvider.value(
          value: CountryProvider(),
        ),
        ChangeNotifierProvider.value(
          value: NewsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: appRoutes,
      ),
    ),
  );
}
