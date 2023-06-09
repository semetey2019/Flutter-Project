import 'package:flutter/cupertino.dart';
import 'package:sabak26_news_app/model/article.dart';
import 'package:sabak26_news_app/theme/app_text_styles.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.title,
      textAlign: TextAlign.center,
      style: AppTextStyles.titleTextStyle,
    );
  }
}
