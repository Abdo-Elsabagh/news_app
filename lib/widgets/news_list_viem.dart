import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListViem extends StatelessWidget {
  const NewsListViem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: NewsTile(),
        );
      },
    );
  }
}