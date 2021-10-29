import 'package:flutter/material.dart';
import 'package:weather_flutter/pages/choose_location.dart';
import 'package:weather_flutter/pages/loading.dart';
import 'package:weather_flutter/pages/Home.dart';

void main() => runApp( MaterialApp(
  initialRoute: '/',
      routes: {
        '/':(context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      }
    ));
