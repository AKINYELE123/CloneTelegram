import 'package:flutter/material.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({Key? key}) : super(key: key);

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
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people_outline, color: Colors.grey.shade400, size: 35,),
                        SizedBox(width: 20,),
                        Text("New Group", style:TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.lock_clock_outlined, color: Colors.grey.shade400,size: 35,),
                    SizedBox(width: 20,),
                    Text("New Secret Chat", style:TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.speaker, color: Colors.grey.shade400,size: 35,),
                    SizedBox(width: 20,),
                    Text("New Channel", style:TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400))
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
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        backgroundColor: Colors.blue,
        child: Icon(
            Icons.person_add_outlined,
        ),
        onPressed: (){
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context)=> NewMessage(),));
        },
      ),

     );
  }
}
