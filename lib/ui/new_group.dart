import 'package:flutter/material.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("New Group"),
              ],
            ),
            Text("up to 200000 members", style: TextStyle(fontSize: 16, color: Colors.white70),)
          ],
        ),

      ),
      body: ListView(
        children: [
          Container(
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "  Add People ...",hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
