import 'package:http/http.dart' as http;
import 'package:weather_app_with_bloc/constants/api.const.dart';
import 'package:weather_app_with_bloc/models/weather_responce.dart';

/// [cityName] alyp oshol shaardyn aba yrayin beret
class WeatherService {
  final client = http.Client();
  Future<WeatherResponce?> getWeatherByCityName(String cityName) async {
    final uri = Uri.parse(ApiConst.weatherByCityName(cityName));
    try {
      final responce = await client.get(uri);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final weather = WeatherResponce.fromJson(responce.body);
        return weather;
      } else {
        print('responcetun status kod metodunda ${responce.statusCode}');
        return null;
      }
    } catch (e) {
      print('you has error ${e.toString()}');
    }
  }

  ///  endpointke request jiberuu
//koldonuuchudan shaardyn atyn aluu
// uri tuzuu
//
//uri request jiberet
// responcetun status codun teksheret
// status kod 200 je 201 bolso model kaitarat
//eger kata bar bolso null kaitarsyn

// }
}

final weatherService = WeatherService();
