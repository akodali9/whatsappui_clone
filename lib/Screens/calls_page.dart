import 'package:flutter/material.dart';
import 'package:whatsappui_clone/models/calls_model.dart';
import 'package:whatsappui_clone/widgets/calls_section_tile.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    List<Calling> items = [
      Calling(TIME_DATE: "6pm", User_img: "", User_name: "Bob"),
      Calling(TIME_DATE: "5:48pm", User_img: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", User_name: "Zuck")
    ];
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
          children: items.map((item) => CallsSectionTile(item: item)).toList(),
        ),
      ),
    );
  }
}