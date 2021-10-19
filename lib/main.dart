import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        const Text('Hello'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('click me'),
          ),
          Container(
            color: Colors.cyan,
            padding: const EdgeInsets.all(30.0),
            child: const Text('inside container'),
          )
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Click'),
        backgroundColor: Colors.green[600],
      ),
    );
  }
}
