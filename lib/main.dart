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
      body:Row(children: [
        const Text('Hello'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('click me'),
          //color:Color.green[400],)
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Click'),
        backgroundColor: Colors.green[600],
      ),
    );
  }
}
