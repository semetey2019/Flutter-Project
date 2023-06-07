import 'package:flutter/material.dart';
import 'package:sabak26_news_app/constants/api_const.dart';
import 'package:sabak26_news_app/model/top_news.dart';
import 'package:sabak26_news_app/services/fetch_service.dart';
import 'package:sabak26_news_app/viev/detail_viev.dart';

class HomeViev extends StatefulWidget {
  const HomeViev({super.key});

  @override
  State<HomeViev> createState() => _HomeVievState();
}

class _HomeVievState extends State<HomeViev> {
  TopNews? topNews;
  Future<void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews();
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
      appBar: AppBar(
        backgroundColor: const Color(0xffFE5722),
        title: const Center(
          child: Text(
            'News Agreggator',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: const [
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
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
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child:
                              //  CachedNetworkImage(
                              //   imageUrl: news.urlToImage,
                              //   placeholder: (context, url) =>
                              //       const CircularProgressIndicator(),
                              //   errorWidget: (context, url, error) =>
                              //       Image.asset('assets/error.png'),
                              // ),
                              Image.network(
                                  news.urlToImage ?? ApiConst.newsImage),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(news.title),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
