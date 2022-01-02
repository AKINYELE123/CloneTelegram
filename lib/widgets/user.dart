class User{
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

final User currentUser = User(
  id: 0,
  name: "Coding Master",
  imageUrl: "images/babe.jpg",
  isOnline: true,
);
final User ayman = User(
  id: 1,
  name: "Tech-u Forum",
  imageUrl: "images/ayman.jpg",
  isOnline: true,
);
final User bolu = User(
  id: 2,
  name: "Tunde Akinyele",
  imageUrl: "images/bolu.jpg",
  isOnline: false,
);
final User favour = User(
  id: 3,
  name: "Chelsea FC",
  imageUrl: "images/favour.jpg",
  isOnline: true,
);
final User Gloria = User(
  id: 4,
  name: "Gloria",
  imageUrl: "images/iseoluwa.jpg",
  isOnline: false,
);
final User jackfrost = User(
  id: 5,
  name: "Jackfrost",
  imageUrl: "images/jackfrost.jpg",
  isOnline: true,
);
final User leo = User(
  id: 6,
  name: "REDEDITY NATION",
  imageUrl: "images/leo.jpg",
  isOnline: true,
);
final User ope = User(
  id: 7,
  name: "WILLIAMS",
  imageUrl: "images/ope.jpg",
  isOnline: false,
);
final User pizzle = User(
  id: 8,
  name: "BINANCE NIGERIA",
  imageUrl: "images/pizzle.jpg",
  isOnline: true,
);
final User qudri = User(
  id: 9,
  name: "Ictfingers channel",
  imageUrl: "images/qudri.jpg",
  isOnline: true,
);