import 'package:flutter/material.dart';

class SearchTap extends StatelessWidget {
  const SearchTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                  Container(
                    child: TextField(
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),

              ),
            ],
          )),
    );
  }
}
