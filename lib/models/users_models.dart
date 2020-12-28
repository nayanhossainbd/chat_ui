class User {
  final int id;
  final String name;
  final String imageUrl;
  User ({
    this.id,
    this.name,
    this.imageUrl,
  });

// You Current user 
final User currentUser  = User(
  id:0,
  name:'Current User ',
  imageUrl:'assets/images/user1.jpg',
);
final User user =User(
  
  
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

}

