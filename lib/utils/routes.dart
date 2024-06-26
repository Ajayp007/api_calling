import 'package:flutter/material.dart';

import '../screen/albums/view/album_screen.dart';
import '../screen/comments/view/comment_screen.dart';
import '../screen/country/view/country_screen.dart';
import '../screen/home/view/home_screen.dart';
import '../screen/news/view/news_screen.dart';
import '../screen/photos/view/photos_screen.dart';
import '../screen/post/view/post_screen.dart';
import '../screen/todos/view/todos_screen.dart';
import '../screen/user/view/user_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomeScreen(),
  'post': (context) => const PostScreen(),
  'comment': (context) => const CommentScreen(),
  'album': (context) => const AlbumScreen(),
  'photos':(context) => const PhotosScreen(),
  'todos':(context) => const TodosScreen(),
   'user':(context) => const UserScreen(),
   'country':(context) => const CountryScreen(),
  'news':(context) => const NewsScreen(),
};
