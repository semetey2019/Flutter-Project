import 'package:flutter/cupertino.dart';
import 'package:sabak26_news_app/model/article.dart';
import 'package:sabak26_news_app/theme/app_text_styles.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.description.toString(),
      textAlign: TextAlign.center,
      style: AppTextStyles.descriptionTextStyle,
    );
  }
}
