import 'package:flutter/material.dart';
import 'package:weather_flutter/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Brlin', url: 'Europe/Berlin');

    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          Padding(padding: const EdgeInsets.all(50.0), child: Text('loading')),
    );
  }
}
