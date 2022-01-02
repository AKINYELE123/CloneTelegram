import 'package:flutter/material.dart';
import 'package:telegram_app/ui/calls.dart';
import 'package:telegram_app/ui/contact.dart';
import 'package:telegram_app/ui/features.dart';
import 'package:telegram_app/ui/invite.dart';
import 'package:telegram_app/ui/new_group.dart';
import 'package:telegram_app/ui/people.dart';
import 'package:telegram_app/ui/saved.dart';
import 'package:telegram_app/ui/settings.dart';
import 'package:telegram_app/ui/userpage.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = "David Deji";
    final number  = "09039137898";
    final urlImage = "images/PD.jpg";
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: [
            buildHeader(
              name: name,
              number: number,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(
              name: name,
              urlImage: urlImage,
              ))), urlImage: 'images/PD.jpg'
            ),
            Divider(color: Colors.white,),
            SizedBox(height: 20,),
            buildMenuItems(
                text: "New Group",
                icon: Icons.people,
              onClicked: () =>  selectedItem(context, 0),
            ),
            SizedBox(height: 6,),
            buildMenuItems(
                text: "Contacts",
                icon: Icons.person_outline,
              onClicked: () =>  selectedItem(context, 1),
            ),
            SizedBox(height: 6,),
            buildMenuItems(
                text: "Calls",
                icon: Icons.call_outlined,
              onClicked: () =>  selectedItem(context, 2),
            ),
            SizedBox(height: 6,),
            buildMenuItems(
                text: "People Nearby",
                icon: Icons.accessibility_new_outlined,
              onClicked: () =>  selectedItem(context, 3),
            ),
            SizedBox(height: 6,),
            buildMenuItems(
                text: "Saved Messages",
                icon: Icons.bookmark_border_rounded,
              onClicked: () =>  selectedItem(context, 4),
            ),
            SizedBox(height: 6,),
            buildMenuItems(
                text: "Settings",
                icon: Icons.settings_outlined,
              onClicked: () =>  selectedItem(context, 5),
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.white,),
            SizedBox(height: 10,),
            SizedBox(height: 6,),
            buildMenuItems(
                text: "Invite Friends",
                icon: Icons.person_add_outlined,
              onClicked: () =>  selectedItem(context, 6),
            ),
            SizedBox(height: 6,),
            buildMenuItems(
                text: "Telegram Features",
                icon: Icons.person_search_outlined,
              onClicked: () =>  selectedItem(context, 7),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItems ({
  required String text,
  required IconData icon,
    required VoidCallback onClicked,
}){
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: Colors.white,),
      title: Text(text, style: TextStyle(color: color),),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  Widget buildHeader({
  required String name,
    required String number,
    required String urlImage,
    required VoidCallback onClicked,

}) =>
      InkWell(
        onTap: onClicked,
          child: Container(

            //padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(urlImage),
                      ),
                      Row(
                        children: [
                          Icon(Icons.nightlight_round, color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white)
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      number,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
      );

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index){
      case 0:
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> NewGroup(),));
      break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> Contacts(),));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> Calls(),));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> People(),));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> Saved(),));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> Settings(),));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> Invite(),));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> Features(),));
        break;
    }
  }

}
