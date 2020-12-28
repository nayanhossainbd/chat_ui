import 'package:chat_ui/models/massages_models.dart';
import 'package:chat_ui/screens/chat_screen.dart';
// import 'package:chat_ui/models/users_models.dart';
import 'package:flutter/material.dart';
class RecentChats extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0)

          ),

        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0,),
            topRight: Radius.circular(30.0)
          ),
          child:
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(
                    user: chat.sender,
                  ),

                ),
                 ),
                child:Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: chat.unread ? Color(0xFFFFEFEE) : Colors.white70,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(0.0),

                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: < Widget > [
                      Row(
                        children: < Widget > [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(chat.sender.imageUrl), ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: < Widget > [

                              Text(chat.sender.name, style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ), ),
                              SizedBox(height: 6.0, ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.48,
                                child: Text(chat.text, style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blueGrey,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                      Column(
                        children: < Widget > [

                          chat.unread ? Container(
                            width: 40.0,
                            height: 20.0,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Theme.of(context).primaryColor,
                            ),
                            alignment: Alignment.center,
                            child: Text('New'),

                          ) : SizedBox.shrink(),
                          SizedBox(height: 6.0, ),
                          // Icon(Icons.art_track),
                          Text(chat.time,
                            style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400, ),
                          ),
                        ],
                      )
                    ],
                  )


                ),
              );
            },
          ),
        ),

      ),
    );


  }



}