
import 'package:flutter/material.dart';


class EditText extends StatefulWidget {


  const EditText({super.key});


  @override
  State<EditText> createState() => _EditText();

}

class _EditText extends State<EditText> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EditText',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EditText'),
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
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter your text', // Placeholder text
              ),
            ),
          ),
        ),
      ),
    );
  }

}