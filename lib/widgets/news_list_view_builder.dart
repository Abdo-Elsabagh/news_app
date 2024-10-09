import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_viem.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  List<ArticleModel> articles = [];
  bool isLoad = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoad = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoad
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty
            ? NewsListViem(articles: articles)
            : const SliverToBoxAdapter(
                child: Text('oops there was an error try later'),
              );
  }
}
