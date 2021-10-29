import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the ui
  String? time; // the time in that location
  String? flag; //url to an asset flag icon
  String url; // location url endpont

  WorldTime({required this.location, required this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(
          Uri.https('worldtimeapi.org', '/api/timezone/$url', {'q': '{http}'}));
      Map data = jsonDecode(response.body);
      //get property from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //set the time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}