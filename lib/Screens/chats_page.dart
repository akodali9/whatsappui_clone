import 'package:flutter/material.dart';
import 'package:whatsappui_clone/models/chat_model.dart';
import 'package:whatsappui_clone/widgets/chats_section_tile.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  List<Chat> chats = const [
    Chat(
      img_url:
          "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1899&q=80",
      user_name: "Bob",
      notification_count: 0,
      text_msg: "Hello bob",
      time_date: "6:00 pm",
    ),
    Chat(
      img_url: "",
      user_name: "Bro",
      notification_count: 2,
      text_msg: "Hello?",
      time_date: "5:00 pm",
    ),
    Chat(
      img_url:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      user_name: "Amanda",
      notification_count: 1,
      text_msg: "Did you check the clone",
      time_date: "11:59 am",
    ),
    Chat(
      img_url:
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      user_name: "Zuck",
      notification_count: 0,
      text_msg: "Good Work man!",
      time_date: "11 am",
    ),
    Chat(
      img_url:
          "https://images.pexels.com/photos/3184398/pexels-photo-3184398.jpeg?auto=compress&cs=tinysrgb&w=600",
      user_name: "The Bros",
      notification_count: 10,
      text_msg: "Weekend Plan Guys?",
      time_date: "7 am",
    ),
    Chat(
      img_url: "",
      user_name: "+921234657891",
      notification_count: 1,
      text_msg: "Hey, this is mark ;}",
      time_date: "Yesterday",
    ),
    Chat(
      img_url: "",
      user_name: "Team",
      notification_count: 0,
      text_msg: "checkout new branch on github fellas",
      time_date: "Yesterday",
    ),
    Chat(
      img_url:
          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600",
      user_name: "Mikey",
      notification_count: 0,
      text_msg: "I need an update on ui design",
      time_date: "Yesterday",
    ),
    Chat(
      img_url: "",
      user_name: "Sis",
      notification_count: 0,
      text_msg: "Lets catch up this weekend!",
      time_date: "Yesterday",
    ),
    Chat(
      img_url: "",
      user_name: "+90987654321",
      notification_count: 0,
      text_msg: "Offers on your products here!!!!",
      time_date: "Yesterday",
    ),
    Chat(
      img_url:
          "https://cdn.vox-cdn.com/thumbor/8o77pQGxiK4QcuQq34Gn44PhVUc=/0x0:2842x1470/920x613/filters:focal(1209x317:1663x771):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/53961067/bossbabycover.0.jpg",
      user_name: "Boss",
      notification_count: 0,
      text_msg: "lets conduct a Meet on thursday about the app sir.",
      time_date: "july 29",
    ),
    Chat(
      img_url: "https://logowik.com/content/uploads/images/uber-eats2124.jpg",
      user_name: "Uber Eats",
      notification_count: 0,
      text_msg: "Order on the way",
      time_date: "may 19",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: const Color(0xff008069),
        title: const Text(
          "WhatsApp",
          style: TextStyle(fontSize: 22),
        ),
        iconTheme: const IconThemeData(
          size: 28,
          color: Colors.white,
        ),
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
            Column(
                children: chats
                    .map((item) => ChatSectionTile(
                          item: item,
                        ))
                    .toList()),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your Chats are end to end encrypted 🔒",
                  style: TextStyle(
                    color: Color.fromARGB(255, 49, 165, 113),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
