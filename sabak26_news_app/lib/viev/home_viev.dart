import 'package:flutter/material.dart';
import 'package:sabak26_news_app/components/home_new_card.dart';

import 'package:sabak26_news_app/model/domain_countries.dart';
import 'package:sabak26_news_app/model/top_news.dart';
import 'package:sabak26_news_app/services/fetch_service.dart';
import 'package:sabak26_news_app/theme/app_colors.dart';
import 'package:sabak26_news_app/theme/app_text.dart';
import 'package:sabak26_news_app/theme/app_text_styles.dart';

class HomeViev extends StatefulWidget {
  const HomeViev({super.key});

  @override
  State<HomeViev> createState() => _HomeVievState();
}

class _HomeVievState extends State<HomeViev> {
  TopNews? topNews;
  Future<void> fetchNews([String? domain]) async {
    //'[]'- coзсуз алсын деген эмес. болсо ала берет
    topNews = null;
    setState(() {});
    topNews = await TopNewsRepo().fetchTopNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColors,
        title: const Text(
          AppText.agr,
          style: AppTextStyles.agrStyle,
        ),
        actions: [
          PopupMenuButton<Country>(onSelected: (Country item) async {
            //popupmenubutton - ...ны баскан жер.onselected - кичинекей экран
            await fetchNews(item.domain);
          }, itemBuilder: (BuildContext context) {
            return countiesSet
                .map(
                  (e) => PopupMenuItem<Country>(
                    value: e,
                    child: Text(e.name),
                  ),
                )
                .toList();
          }),
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return CardNews(news: news);
              },
            ),
    );
  }
}
