import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate network request
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Shery';
    });

    await Future.delayed(const Duration(seconds: 2), () {
      return 'egg';
    });
    print(username);

  }

  @override
  void initState() {
    super.initState();
    getData();
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
        body: Text('location'));
  }
}
