import"package:chat_ui/models/users_models.dart";
class Message{
  final User sender;
  final String time; // would usually used for date time format from firebase timestamp;
  final String text;
  final bool isLiked;
  final bool unread;


   Message({
     this.sender,
     this.time,
     this.text,
     this.isLiked,
     this.unread,

   });
}


// You Current user 
final User currentUser  = User(
  id:0,
  name:'Current User ',
  imageUrl:'assets/images/user1.jpg',
);
// Users 
final User greg = User(
  id:1,
  name:'Goerge Morgan',
  imageUrl:'assets/images/user2.jpg',
);
final User nayan = User(id:2,name:'Nayan Hossain',imageUrl:'assets/images/user3.jpg');

final User arif = User(id:3,name:'Nayan Hossain',imageUrl:'assets/images/user3.jpg');

final User john = User(id:4,name:'Nayan Hossain',imageUrl:'assets/images/user4.jpg');
final User mithi = User(id:5,name:'Harry potter',imageUrl:'assets/images/user5.jpg');
final User  shovon = User(id:6,name:'Shovn Khondokar',imageUrl:'assets/images/user1.jpg');

// Contact lists
List <User> favorites =[greg,nayan,arif,shovon];

// Example Masseges on Home Screen
List <Message> chats=[
  Message(sender:nayan,time: '1:45 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: true,unread: false),
  Message(sender:arif,time: '1:40 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: true),
  Message(sender:john,time: '1:40 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: false),
  Message(sender:shovon,time: '1:40 am',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: true),
  Message(sender:john,time: '1:40 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: true,unread: false),
  Message(sender:arif,time: '1:50 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: true),
  Message(sender:shovon,time: '1:48 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: false),
  Message(sender:arif,time: '1:47 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: true),
  Message(sender:john,time: '1:40 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: false)

];

// Examples Message on Chats Screen
List <Message> messages =[
  Message(sender:nayan,time: '1:45 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: true,unread: false),
  Message(sender:arif,time: '1:40 pm',text: 'Hey Threre I\'m using Message Chat UI',isLiked: false,unread: false)
];