import 'package:sabak26_news_app/model/article.dart';

class TopNews {
  TopNews({
    required this.status,
    required this.totalResults,
    required this.article,
  });
  final String status;
  final int totalResults;
  final List<Article> article;

  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
        status: json['status'],
        totalResults: json['totalResults'],
        article: List<Article>.from(
            (json['articles']).map((e) => Article.fromJson(e))));
  }
}
//final - top news тун пропертилери касиеттери
//reguired - конструктор берилсин
//{} - named construktor
//map - метод,артикльдын ичиндеги элементтерди катары мн чыгарып берет
//e - элемент