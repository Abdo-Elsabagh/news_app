import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/splash_screen.dart';

void main() {
  getNews();
  runApp(const MyApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=b5dde141ef6842039e4e9b24759d3a68');
  print(response);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachView(),
    );
  }
}
