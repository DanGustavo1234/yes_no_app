import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import '../../widgets/chat/my_message_bubble.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://tvazteca.brightspotcdn.com/dims4/default/f47f192/2147483647/strip/true/crop/540x540+0+135/resize/720x720!/format/webp/quality/90/?url=http%3A%2F%2Ftv-azteca-brightspot.s3.amazonaws.com%2Fad%2Ff8%2F172f4c72667c0588158a6a1cd6d7%2Fa-2154490.jpg"),
          ),
        ),
        title: Text("My love ",style:TextStyle(color: Colors.white),),
        centerTitle: false,
        backgroundColor: colors.secondary,
      ),
      body: ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
       child: Column(children: [
        Expanded(child:
        ListView.builder(
          itemCount: 100,
          itemBuilder:(context, index) {
          return (index % 2 == 0)? HerMessageBubble():MyMessageBubble();
        },)
        ),
        Text("Mundo")
           ],),
     )); 
   
  }
}


