import 'package:flutter/material.dart';
import 'package:telegram_app/ui/phone.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Calls"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert_outlined, size: 30,)
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("images/bolu.jpg"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width* 0.72,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Tunde Akinyele",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone, color: Colors.blue,size: 30,)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.call_received_outlined, color: Colors.green,)
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text("(2) November 29 at 8:03AM", style: TextStyle(color: Colors.grey.shade600, fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("images/iseoluwa.jpg"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width* 0.72,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Gloria",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.video_call, color: Colors.blue,size: 30,)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.call_made_outlined, color: Colors.green,)
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text("November 27 at 10:45PM", style: TextStyle(color: Colors.grey.shade600, fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("images/iseoluwa.jpg"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width* 0.72,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Gloria",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone, color: Colors.blue,size: 30,)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.call_received_outlined, color: Colors.red,)
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text("(7) November 27 at 10:00PM", style: TextStyle(color: Colors.grey.shade600, fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("images/ope.jpg"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width* 0.72,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "WILLIAMS",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone, color: Colors.blue,size: 30,)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.call_received_outlined, color: Colors.red,)
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text("(20) October 10 at 8:03AM", style: TextStyle(color: Colors.grey.shade600, fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        backgroundColor: Colors.blue,
        child: Icon(
            Icons.phone,
        ),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=> Phone(),));
        },
      ),
    );
  }
}
