import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/model_inbox.dart';
import '../widget/widget_call.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key); // Perbaiki parameter super

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: inboxs.length,
        itemBuilder: (BuildContext context, int index) {
          Inbox inbox = inboxs[index];
          return WidgetCall(
            name: inbox.txtName,
            image: inbox.urlImage,
            status: inbox.txtStatus,
            tanggal: inbox.txtTanggal,

          );
        },
      ),
    );
  }
}
