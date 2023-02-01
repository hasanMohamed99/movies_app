import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/core/utils/app_string.dart';
import 'package:movie_app/core/services/services_locator.dart';
import 'package:movie_app/movies/presentation/screens/movies_screen.dart';

void main() {
  ServiceLocator().init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900,
        primaryColor: Colors.teal,
      ),
      home: const MoviesScreen(),
    );
  }
}