import 'package:flutter/material.dart';
import 'package:telegram_app/ui/chat_Screen.dart';
import 'package:telegram_app/ui/newmessage.dart';
import 'package:telegram_app/ui/searchtap.dart';
import 'package:telegram_app/widgets/message.dart';
import 'package:telegram_app/widgets/navigationdrawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SearchTap(),));
          },
              icon: Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
          itemBuilder: (BuildContext context, index){
          final Message chat = chats[index];
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(
              user: chat.sender,
            ))),

            child: Container(
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
                      backgroundImage: AssetImage(chat.sender.imageUrl),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.72,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  chat.sender.name,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(chat.time, style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontSize: 11
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          //alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    chat.text,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(6.6),
                                decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                  ),
                                  color: Colors.green,
                                 // borderRadius: BorderRadius.all(Radius.circular(100)),
                                  // shape: CircleBorder(),
                                ),
                                child: Center(
                                  child: Text(chat.unread, style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13
                                  ),
                                  ),
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
          );
          }
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.edit
        ),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=> NewMessage(),));
        },
      ),
    );
  }
}
