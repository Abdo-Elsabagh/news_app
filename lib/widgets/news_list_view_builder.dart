import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_viem.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});

  @override

  // bool isLoad = true;
  // @override
  // void initState() {
  //   super.initState();
  //   getGeneralNews();
  // }

  // Future<void> getGeneralNews() async {
  //   articles = await NewsService(Dio()).getNews();
  //   isLoad = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService(Dio()).getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListViem(articles: snapshot.data!); 
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops there was an error try later'),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
    // return isLoad
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? NewsListViem(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child: Text('oops there was an error try later'),
    //           );
  }
}
