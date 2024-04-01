import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/model_inbox.dart';
import '../widget/widget_chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key); // Perbaiki parameter super

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // Pastikan variabel 'inboxs' didefinisikan atau diimpor
  // List<Inbox> inboxs = []; // Contoh definisi variabel 'inboxs'

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: inboxs.length,
        itemBuilder: (BuildContext context, int index) {
          Inbox inbox = inboxs[index];
          return WidgetChat(
            name: inbox.txtName,
            image: inbox.urlImage,
            chat: inbox.txtChat,
            time: inbox.txtTime,
            message: inbox.txtMessage,

          );
        },
      ),
    );
  }
}
