import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak26_news_app/components/detail_title.dart';
import 'package:sabak26_news_app/constants/api_const.dart';
import 'package:sabak26_news_app/model/article.dart';
import 'package:sabak26_news_app/theme/app_colors.dart';
import 'package:share_plus/share_plus.dart';
import '../components/detail_descrioption.dart';
import '../components/detail_divider.dart';
import '../components/detail_news_time.dart';
import '../components/detail_site_button.dart';

class DetailViev extends StatelessWidget {
  const DetailViev({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final newsTime = DateFormat('d MMMM y H:m:s').format(
      DateTime.parse(article.publishedAt!),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.detailAppBarColors,
        centerTitle: true,
        title: Text(article.title!),
        actions: article.url!.isNotEmpty
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(article.url!);
                  },
                  icon: const Icon(Icons.share),
                ),
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: ListView(
          children: [
            DetailTitle(article: article),
            const SizedBox(height: 10),
            const DetailDivider(),
            DetilNewsTime(newsTime: newsTime),
            const SizedBox(height: 15),
            CachedNetworkImage(
              imageUrl: article.urlToImage ?? ApiConst.newsImage,
              placeholder: (context, url) => Image.asset('assets/error.png'),
              errorWidget: (context, url, error) =>
                  Image.asset('assets/news.jpg'),
            ),
            const SizedBox(height: 15),
            DetailDescription(article: article),
            DetailSiteButton(
              article: article,
            ),
          ],
        ),
      ),
    );
  }
}
