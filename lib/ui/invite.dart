import 'package:flutter/material.dart';


class Invite extends StatelessWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invite Friends"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search contacts",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:10, top: 5, bottom: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.share, color: Colors.grey, size: 30,),
                    SizedBox(width: 15,),
                    Row(
                      children: [
                        Text("Share Telegram...", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45.0),
                  child: Divider(height: 20,thickness: 1, color: Colors.grey,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
