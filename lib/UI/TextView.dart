
import 'package:flutter/material.dart';


class TextView extends StatefulWidget {


  const TextView({super.key});


  @override
  State<TextView> createState() => _TextView();

}

class _TextView extends State<TextView> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TextView'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            // Adding the back button to the AppBar
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
        ),
        body:  const Center(
          child: Text('Hello, World!',
          style: TextStyle(
            fontSize: 25.0
          ),
          ),
        ),
      ),
    );
  }

}