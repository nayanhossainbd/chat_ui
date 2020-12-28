import 'package:chat_ui/models/massages_models.dart';
import 'package:chat_ui/models/users_models.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({
    this.user
  });
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State < ChatScreen > {

  _buildMessage(Message message, bool isMe) {
    final Container msg =
      Container(

        margin: isMe ? EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 70.0
        ) : EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,

        ),
        padding: EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 15.0
        ),
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          borderRadius: isMe ? BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0)
          ) :
          BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
          color: isMe ? Theme.of(context).accentColor : Color(0xFFFFFFF),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: < Widget > [
            Text(message.time),
            Text(message.text)
          ],
        ),


      );
    if (isMe) {
      return msg;
    }
    return Row(

      children: < Widget > [
        msg,
        IconButton(
          icon: message.isLiked ?
          Icon(Icons.favorite_border) :
          Icon(Icons.favorite),
          iconSize: 30.0,
          color: message.isLiked ? Theme.of(context).primaryColor : Colors.blueGrey,
          onPressed: () {},
        ),

      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: < Widget > [
          IconButton(icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {}
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: 'Send a message...',

              ),
            ),
          ),
          IconButton(icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {}
          ),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.name, style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ), ),
        actions: < Widget > [
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () =>FocusScope.of(context).unfocus() ,
        child:  Column(
        children: < Widget > [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )
              ),
              child: ClipRRect(
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),

            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    
      ),
      );
  }
}