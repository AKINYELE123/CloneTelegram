import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_app/ui/contact.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/PD.jpg"),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("David Deji"),
                      ]
                    ),
                    Row(
                      children: [
                        Text("online")
                      ],
                    )
                  ],
                ),
              ],
            ),
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
      body: ListView(
         //padding: EdgeInsets.all(10),
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 20),
                child: Text("Account", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                 // padding: EdgeInsets.only(left: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Text("08131589332",style: TextStyle(color: Colors.black, fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 7,),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Tap to change phone number")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Divider(height: 10, color: Colors.grey,),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  child: Row(
                    children: [
                      Text("None",style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7,),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Username")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Divider(height: 10, color: Colors.grey,),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  child: Row(
                    children: [
                      Text("Bio", style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7,),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Add a few words about yourself")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 7,),
          Divider(thickness: 10, height: 10,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(20),
            //padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Settings", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Icon(Icons.notifications_none, color: Colors.grey,),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("Notifications and Sounds", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),
                      Divider(height: 10,  color: Colors.grey,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Divider(height: 10, color: Colors.grey,),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Icon(Icons.lock_clock_outlined, color: Colors.grey,),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("Privacy and Security", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),
                      Divider(height: 10, color: Colors.grey,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Divider(height: 10, color: Colors.grey,),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Icon(Icons.pie_chart_outline_outlined, color: Colors.grey,),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("Data and Storage", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Divider(height: 10, color: Colors.grey,),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Icon(Icons.chat_bubble_outline, color: Colors.grey,),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("Chats Settings", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),
                      Divider(height: 30, thickness: 10, color: Colors.grey,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Divider(height: 10, color: Colors.grey,),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Icon(Icons.folder_outlined, color: Colors.grey,),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("Folders", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Divider(height: 10, color: Colors.grey,),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Icon(Icons.devices_outlined, color: Colors.grey,),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("Devices", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Divider(height: 10, color: Colors.grey,),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Icon(Icons.language_outlined, color: Colors.grey,),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("Language", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        SizedBox(height: 7,),
        Divider(thickness: 10, height: 10,),
        SizedBox(height: 10,),
        Container(
            padding: EdgeInsets.only(left: 20, top: 20),
         // padding: EdgeInsets.only(top: 10),
          child: Column(
              children: [
          Row(
          children: [
          Text("Help", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
        ]
    )
      ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                Icon(Icons.question_answer_outlined, color: Colors.grey,),
                SizedBox(width: 20,),
                Row(
                  children: [
                    Text("Ask a Question", style: TextStyle(color: Colors.black, fontSize: 20),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Divider(height: 10, color: Colors.grey,),
          ),
          SizedBox(height: 10,),
          Container(
              padding: EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                Icon(Icons.add_circle_outline_rounded, color: Colors.grey,),
                SizedBox(width: 20,),
                Row(
                  children: [
                    Text("Telegram FAQ", style: TextStyle(color: Colors.black, fontSize: 20),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Divider(height: 10, color: Colors.grey,),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                Icon(Icons.privacy_tip_outlined, color: Colors.grey,),
                SizedBox(width: 20,),
                Row(
                  children: [
                    Text("Privacy Policy", style: TextStyle(color: Colors.black, fontSize: 20),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(height: 8,),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 2,
            color: Colors.grey,
            child: Center(
              child: Text("Telegram for Android v8.3.1 (2495) arm64-v8a ")
            ),
          )
    ],
      )
    );
  }
}
