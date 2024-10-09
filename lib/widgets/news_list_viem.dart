import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListViem extends StatelessWidget {
  @override
  final List<ArticleModel> articles ;

 const  NewsListViem({super.key , required this.articles});

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
