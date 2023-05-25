import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print(response);
  //get - aluu. ssylkany alyp keldi
  // await- kutup turuuchu (bolgondo dayim async bolot)
  // asynk ubakyt aluuchu metod
  // dio bul data aluuchu paket
}
