import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         Center(
           child: Container(
             padding: EdgeInsets.all(50),
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(top: 100),
              // width: double.infinity,
              // height: double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Colors.blue,
                        onPressed: (){},
                        child: Icon(Icons.location_on, color: Colors.white, size: 34, ),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    ),
                    SizedBox(height: 20,),Text("People Nearby",style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),Text("Quickly add people nearby who are viewing this section and discover local group chats", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    SizedBox(height: 20,),Text("Please turn on location service to enable this features",style: TextStyle(color: Colors.grey, fontSize: 16),)
                  ],
                ),
              ),
            ),
        ),
         ),
          Center(
            child: Container(
              child: FlatButton(
                color: Colors.blue,
                onPressed: (){},
                child: Text("Connect", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
