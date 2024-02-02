
import 'package:flutter/material.dart';
import 'package:learn_demo/UI/EditText.dart';
import 'package:learn_demo/UI/TextView.dart';


class OptionUi extends StatefulWidget {


   const OptionUi({super.key});


   @override
   State<OptionUi> createState() => _ListView();

}

class _ListView extends State<OptionUi> {
  final List<String> items = ['TextView', 'EditText', 'DropDown', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic ListView Example'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(items[index]),
              onTap: () {
                // Handle onTap for the ListTile
                switch(index){
                  case  0 :{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TextView()),
                  );
                }
                  case 1 :{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EditText()),
                    );
                  }
                }

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(items[index]),
                  ),
                );

              },
            );
          },
        ),
      ),
    );
  }

}