import 'package:chat_ui/widgets/category_selector.dart';
import 'package:chat_ui/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/widgets/favourite_contact.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State < HomeScreen > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text('Chats',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: < Widget > [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      drawer: new Drawer(
         child: new ListView(
           children: <Widget>[
             //header
             new UserAccountsDrawerHeader(
                 accountName: Text('Nayan Hossain',),
                 accountEmail: Text('nayahossainbd.786@gmail.com'),
             currentAccountPicture: GestureDetector(
               child: new CircleAvatar(
                 backgroundImage:AssetImage('assets/images/user1.jpg'),
                 radius:35.0,
                //  child:new Image(image:AssetImage('assets/images/user3.jpg')),
                //  child: Icon(Icons.person,color: Colors.white,),
               )
             ),
               decoration: new BoxDecoration(
                 color: Colors.red,
               ),
             ),
             // body
           InkWell(
             onTap:(){},
               child: ListTile(
                 title: Text('Dashboard'),
                 leading: Icon(Icons.dashboard),
               ),

           ),
             InkWell(
               onTap:(){},
               child: ListTile(
                 title: Text('About'),
                 leading: Icon(Icons.assignment),
               ),

             ),
             InkWell(
               onTap:(){},
               child: ListTile(
                 title: Text('My Account'),
                 leading: Icon(Icons.person),
               ),

             ),
             InkWell(
               onTap:(){},
               child: ListTile(
                 title: Text('Favourites'),
                 leading: Icon(Icons.favorite),
               ),

             ),
             Divider(),
             InkWell(
               onTap:(){},
               child: ListTile(

                 title: Text('Contact'),
                 leading: Icon(Icons.bookmark),
               ),

             ),
             InkWell(
               onTap:(){},
               child: ListTile(

                 title: Text('Settings'),
                 leading: Icon(Icons.settings),
               ),

             ),
           ],
         )
       ),
      body: Column(
        children: < Widget > [

        CategorySelector(),
        Expanded(
          child:
          Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)
            )
          ),
          child: Column(
            children: < Widget > [
              FavouriteContact(),
              RecentChats(),
            ], 
            )

        ),
      
           ),
         ], 
      ),

    );
  }
}