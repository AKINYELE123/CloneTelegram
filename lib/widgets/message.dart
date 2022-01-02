import 'package:telegram_app/widgets/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final String unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread
  });
}

List<Message> chats = [
  Message(
      sender: currentUser,
      time: "5:30pm",
      text: "Tutorial for flutter begin on the 13th...",
      unread: "2"
  ),
  Message(
      sender: ayman,
      time: "3:30pm",
      text: "We welcome new Student onboard ...",
      unread: "3"
  ),
  Message(
      sender: bolu,
      time: "1:10am",
      text: "you dey come lagos today?",
      unread: "1"
  ),
  Message(
      sender: favour,
      time: "6:30pm",
      text: "Jorginho Won the game for us",
      unread: "1652"
  ),
  Message(
      sender: Gloria,
      time: "9:30am",
      text: "i don dey trinity, you dey house",
      unread: "5",
  ),
  Message(
      sender: jackfrost,
      time: "3:30pm",
      text: "i'll be dropping my album next month",
      unread: "2"
  ),
  Message(
      sender: leo,
      time: "10.30pm",
      text: "Download Netflix movies here",
      unread: "543"
  ),
  Message(
      sender: ope,
      time: "1:20pm",
      text: "Are You free for the ..",
      unread: "3"
  ),
  Message(
      sender: pizzle,
      time: "3:30pm",
      text: "2000BTC for sale",
      unread: "54"
  ),
  Message(
      sender: qudri,
      time: "2:30pm",
      text: "Intern jobs available",
      unread: "2"
  ),

];

List<Message> messages = [
  Message(
      sender: Gloria,
      time: "8:30am",
      text: "Good Morning Oracle",
      unread: "1",
  ),
  Message(
    sender: currentUser,
    time: "8:40am",
    text: "Good Morning",
    unread: "1",
  ),
  Message(
    sender: Gloria,
    time: "8:42am",
    text: "Hope you Slept well",
    unread: "1",
  ),
  Message(
    sender: currentUser,
    time: "8:43am",
    text: "yes, \n What about you",
    unread: "1",
  ),
  Message(
    sender: Gloria,
    time: "8:45am",
    text: "Yes Sure, How about Work",
    unread: "1",
  ),

  Message(
    sender: currentUser,
    time: "8:46am",
    text: "Work is fine",
    unread: "1",
  ),
  Message(
    sender: Gloria,
    time: "8:52am",
    text: "okay Great ",
    unread: "1",
  ),
  Message(
    sender: Gloria,
    time: "8:54am",
    text: "I just wanted to check up on you",
    unread: "1",
  ),
  Message(
    sender: currentUser,
    time: "8:55am",
    text: "Thank you very much, I appreciate",
    unread: "1",
  ),
  Message(
    sender: Gloria,
    time: "8:57am",
    text: "You are Welcome, Are you still in Lagos",
    unread: "1",
  ),
Message(
    sender: currentUser,
    time: "8:58am",
    text: "Yes",
    unread: "1",
  ),
  Message(
    sender: Gloria,
    time: "8:59am",
    text: "I would be in lagos by March",
    unread: "1",
  ),
  Message(
    sender: currentUser,
    time: "9:08am",
    text: "Okay, I would be Expecting you, \n Happy New Year",
    unread: "1",
  ),

  Message(
    sender: Gloria,
    time: "9:23am",
    text: "Wish you the same",
    unread: "1",
  ),



];