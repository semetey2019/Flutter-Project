import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak26_news_app/constants/api_const.dart';
import 'package:sabak26_news_app/model/article.dart';
import 'package:sabak26_news_app/theme/app_colors.dart';
import 'package:sabak26_news_app/theme/sized.dart';
import 'package:sabak26_news_app/viev/detail_viev.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key, required this.news});

  final Article news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailViev(
              article: news,
            ),
          ),
        );
      },
      child: Card(
        color: AppColors.cardColors,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: news.urlToImage ?? ApiConst.newsImage,
                placeholder: (context, url) => Image.asset('assets/error.png'),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/news.jpg'),
              ),
            ),
            Sized.width5,
            Expanded(
              flex: 5,
              child: Text(news.title),
            ),
          ],
        ),
      ),
    );
  }
}
