import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListViem extends StatefulWidget {
  const NewsListViem({super.key});

  @override
  State<NewsListViem> createState() => _NewsListViemState();
}

class _NewsListViemState extends State<NewsListViem> {
  @override
  List<ArticleModel> articles = [];
  @override
  void initState() async {
    super.initState();
    articles = await NewsService(Dio()).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
