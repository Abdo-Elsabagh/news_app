// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';

// class NewsListViem extends StatefulWidget {
//   const NewsListViem({super.key});

//   @override
//   State<NewsListViem> createState() => _NewsListViemState();
// }

// class _NewsListViemState extends State<NewsListViem> {
//   @override
//   List<ArticleModel> articles = [];
//   bool isLoad = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoad = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoad
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 16),
//               child: NewsTile(
//                 articleModel: articles[index],
//               ),
//             );
//           }));
//   }
// }
