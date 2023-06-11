import 'package:flutter/material.dart';
import 'package:sabak26_news_app/model/article.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailSiteButton extends StatelessWidget {
  const DetailSiteButton({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(article.url);
    return MaterialButton(
      color: Colors.deepPurpleAccent,
      onPressed: () async {
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      },
      child: const Text('Open Page'),
    );
  }
}
