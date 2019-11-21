import 'package:flutter/material.dart';

void main(){

  runApp(

    new MaterialApp(
      title: "Chat Topzera",
      home: new ChatScreen(),
  )
  );
}


class ChatScreen extends StatefulWidget{
@override
State createState() => new ChatScreenState();


}


class ChatScreenState extends State<ChatScreen>{
  final TextEditingController _textController = new TextEditingController();
  void _handleSubmitted(String text){
    _textController.clear();
  }


  Widget _buildTextComposer(){

  return new Container(
    width: 250,
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    child: new TextField(
      controller: _textController,
      onSubmitted: _handleSubmitted,
      decoration: new InputDecoration.collapsed(
        hintText: "Envie uma mensagem"),
    ),

  );
}

  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Chat"
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>
        [
         
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.start,
          
           children: <Widget> [
            _buildTextComposer(),
            Icon(
            Icons.send,
            size: 25,
            color: Colors.blue,
            
            ), 
           ]

           ),

        ]      
      )
    );
  }
}



