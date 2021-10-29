import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    //data = ModalRoute.of(context)!.settings.arguments;
    print(data);

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        TextButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
          icon: const Icon(Icons.edit_location),
          label: const Text('Edit Location'),
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data['location'],
                style: const TextStyle(fontSize: 20.0, letterSpacing: 2.0))
          ],
        )
      ],
    )));
  }
}
