import 'package:flutter/material.dart';
import 'package:weather2023/models/weather_model.dart';
import 'package:weather2023/services/weather_service.dart';
import 'package:weather2023/utils/extra.dart';
import 'package:weather2023/utils/weather_current.dart';
import 'package:weather2023/utils/weather_status.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<WeatherModel> futureWeather;
  WeatherService weatherService = WeatherService();

  Widget getWeatherAnimationWidget(int condition) {
    WeatherStatus weatherStatus = WeatherStatus();
    return weatherStatus.getWeatherAnimation(condition);
  }

  @override
  void initState() {
    super.initState();
    futureWeather = weatherService.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<WeatherModel>(
        future: futureWeather,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            WeatherModel data = snapshot.data!;
            int? condition = data.weather![0].id;
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              child: Stack(children: [
                Flexible(
                  flex: 2,
                  child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: getWeatherAnimationWidget(condition!)),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Flexible(
                    flex: 3,
                    fit: FlexFit.loose,
                    child: additionalInformation(
                      data.main!.temp!.round().toInt(),
                      //data.main!.temp!,
                      "${data.main!.humidity!}",
                      "${data.main!.pressure!}",
                      "${data.weather![0].description}",
                      data.name!,
                      data.main!.tempMin!.round().toInt(),
                      // data.main!.tempMin!,
                      data.main!.tempMax!.round().toInt(),

                      // data.main!.tempMax!
                    ),
                  ),
                ),
                Align(
                  //  alignment: Alignment(0.0, 0.5),
                  alignment: Alignment.bottomCenter,
                  child: Flexible(
                      flex: 3,
                      child: weatherInfosExxtra(
                        data.visibility!.round().toInt(),
                        data.wind!.speed!.round().toInt(),
                        data.main!.pressure!.round().toInt(),
                      )),
                ),
              ]),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
