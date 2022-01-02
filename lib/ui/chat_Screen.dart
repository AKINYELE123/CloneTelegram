import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_app/widgets/message.dart';
import 'package:telegram_app/widgets/user.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


  _chatBubble( Message message, bool isMe, bool isSameUser){
    if( isMe ){
      return  Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width*0.80
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.lightGreen.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]
              ),
              child: Text(
                message.text
              ),
            ),
          ),
          !isSameUser ?
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(message.time, style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45
              ),),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5
                      ),
                    ]
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(message.sender.imageUrl),
                ),
              ),
            ],
          )
              :
              Container(child:null,)
        ],
      );
    } else {
      return Column(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width*0.80
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child: Text(message.text),
                ),
              ),
              !isSameUser ?
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5
                          ),
                        ]
                    ),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(message.sender.imageUrl),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(message.time, style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45
                  ),)
                ],
              )
                  :
                  Container(
                    child: null,
                  )
            ],
          ),
        ],
      );
    }
  }



  _sendMessageArea(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.photo),
            iconSize: 25,
            color: Colors.blue,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                  hintText: "Send a Message"),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Colors.blue,
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
     int? prevUserId;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(widget.user.imageUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Center(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: widget.user.name,
                            ),
                            TextSpan(text: "\n"),
                            widget.user.isOnline?
                            TextSpan(
                              text: "Online",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                                :
                                TextSpan(
                                  text: "offline",
                                  style: TextStyle(
                                    fontSize: 11,
                                  )
                                )
                          ]
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_outlined, color: Colors.white),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index){
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    final bool isSameUser = prevUserId == message.sender.id;
                    prevUserId = message.sender.id;
                    return _chatBubble(message, isMe, isSameUser);
                    }
                )
              ),
              _sendMessageArea()
            ],
          ),
        ));
  }
}
