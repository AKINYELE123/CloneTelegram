import 'package:flutter/material.dart';

class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(

              children: [
                MaterialButton(
                  color: Colors.lightBlueAccent,
                  onPressed: (){},
                child: Icon(Icons.bookmark_border_rounded, color: Colors.white,),
                  padding: EdgeInsets.all(10),
                  shape: CircleBorder(),
                ),
                Row(
                  children: [
                    Text("Saved Messages", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15 ),)
                  ],
                )
              ],
            ),
            // Row(
            //   children: [
            //     Icon(Icons.search_outlined, color: Colors.white,),
            //     Row(
            //       children: [
            //         Icon(Icons.)
            //       ],
            //     )
            //   ],
            // )
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search, size: 30,)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert_outlined, size: 30,)),
        ],
      ),
    );
  }
}
