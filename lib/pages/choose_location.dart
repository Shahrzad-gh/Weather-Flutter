import 'package:flutter/material.dart';
import 'package:weather_flutter/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: 'uk.png', url: 'Euorope/London'),
    WorldTime(location: 'Chicago', flag: 'us.png', url: 'America/London'),
    WorldTime(location: 'Tehran', flag: 'ir.png', url: 'Middle/London'),
    WorldTime(location: 'Seoul', flag: 'sko.png', url: 'Asia/London'),
    WorldTime(location: 'Jakarta', flag: 'indo.png', url: 'Asi/London'),
    WorldTime(location: 'Berlin', flag: 'gr.png', url: 'Euorope/London'),
    WorldTime(location: 'Otawa', flag: 'ca.png', url: 'America/London'),
    WorldTime(location: 'Peru', flag: 'pr.png', url: 'Euorope/London')
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen
    Navigator.pop(context, {
            'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime' : instance.isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: const Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      updateTime(index);
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/${locations[index].flag}'),
                    ),
                  ),
                ),
              );
            }));
  }
}
