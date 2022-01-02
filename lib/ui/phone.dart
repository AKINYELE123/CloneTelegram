
import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Contact"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
