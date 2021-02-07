import 'package:dio/dio.dart';

class WeatherAPI{
  static getWeather() async{
    const url = 'http://api.weatherapi.com/v1/current.json?key=b2bde080e7fe427791f71020210702&q=Khulna';

    Response response = await Dio().get(url);

    return response.data;
  }
}