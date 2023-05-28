import 'package:sabak25_news_app/model/article.dart';

class TopNews {
  TopNews({
    required this.status,
    required this.totalResuls,
    required this.article,
  });
  final String status;
  final int totalResuls;
  final Article article;
}
//final - top news тун пропертилери касиеттери
//reguired - конструктор берилсин
//{} - named construktor