import 'package:flutter/material.dart';
import 'package:whatsappui_clone/widgets/chats_section_tile.dart';

class ChatsWidget {
  late String username;
  late String imgUrl;
  late String textMsg;
  late int notificationCount;
  late String dateTime;

  chats(
      String name, String url, String msg, int noticount, String dateandtime) {
    username = name;
    imgUrl = url;
    notificationCount = noticount;
    textMsg = msg;
    dateTime = dateandtime;
  }
}

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff008069),
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
            ChatSectionTile(),
          ],
        ),
      ),
    );
  }
}
