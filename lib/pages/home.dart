import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map? data = {};

  @override
  Widget build(BuildContext context) {
    data = data!.isNotEmpty ?  data : ModalRoute.of(context)!.settings.arguments as Map?;

    //set background
    String bgImage = data!['isDayTime'] ? 'day.png' : 'night.png';
    Color bgColor = data!['isDayTime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)
                  ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: SafeArea(
                child: Column(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'location': result['location'],
                        'flag': result['flag'],
                        'time': result['time'],
                        'isDayTime': result['isDayTime']
                      };
                    });
                  },
                  icon: Icon(Icons.edit_location, color: Colors.grey[300]),
                  label: const Text(
                    'Edit Location',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data!['location'],
                        style: const TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 2.0,
                            color: Colors.white))
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(data!['time'],
                    style: const TextStyle(fontSize: 66.0, color: Colors.white))
              ],
            )),
          ),
        )));
  }
}
