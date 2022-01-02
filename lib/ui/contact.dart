import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        actions: [
          Icon(Icons.search, color: Colors.white, size: 32,),
          Icon(Icons.segment_rounded, color: Colors.white, size: 32,),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_add_outlined, color: Colors.grey.shade400, size: 35,),
                        SizedBox(width: 20,),
                        Text("Invite Friends", style:TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400))
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.grey.shade400,size: 35,),
                    SizedBox(width: 20,),
                    Text("Find People Nearby", style:TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400))
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.7)
            ),
            height: 30,
            padding: EdgeInsets.all(5),
            child: Text("Sorted by last seen time", style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
