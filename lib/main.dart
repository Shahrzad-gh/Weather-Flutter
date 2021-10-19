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
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
            Text('Hello'),
            Text(' World')
          ],),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: const Text('one')
          ),
          Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.pink,
            child: const Text('two')
          ),
          Container(
            padding: const EdgeInsets.all(40.0),
            color: Colors.amber,
            child: const Text('three')
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
