import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
    print('initSate function run');
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
        body: TextButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child:
            Text('Counter is $counter')
        ));
  }
}
