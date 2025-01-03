import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String categroy}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=b5dde141ef6842039e4e9b24759d3a68&category=$categroy');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      // for (var article in articles) {
      //   print(article['author']);
      // }

      List<ArticleModel> articlesList = [];
      
      // for (var article in articles) {
      //   ArticleModel articleModel = ArticleModel.fromJsom(article);
      //   articlesList.add(articleModel);
      // }
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
