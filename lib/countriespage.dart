import 'package:flutter/material.dart';
import 'model/currentWeatherData.dart';

class CountriesPage extends StatelessWidget {
  final CurrentWeatherData weatherData;
  /*int? value;
   CountriesPage(this.value);*/
  CountriesPage({required this.weatherData});

  @override
  Widget build(BuildContext contexxt) {
    return Container(
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) =>
              buildCountryCard(context, index)),
    );
  }

  Widget buildCountryCard(BuildContext context, int index) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Text('Country: ${weatherData.name}',style: TextStyle(fontSize: 30.0)),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text('Temperature: ${weatherData.main?.temp} °C'),
                    Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
