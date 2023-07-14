import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappui_clone/models/status_model.dart';
import 'package:whatsappui_clone/widgets/status_section_tile.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  List<Status> status = [
    Status(
      img_url:
          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600",
      user_name: "Mikey",
      Time_Date: "Today 5pm",
    ),
    Status(
      img_url: "",
      user_name: "Bro",
      Time_Date: "Today 12pm",
    ),
    Status(
      img_url:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      user_name: "Amanda",
      Time_Date: "yesterday 12pm",
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
        // padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(10.0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: SvgPicture.asset(
                        'assets/default_imgs/profile_photo.svg')),
              ),
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Status"),
                  Text(
                    "Tap to add Status Update",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0, bottom: 15.0),
              child: const Text(
                "Recent updates",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Column(
              children:
                  status.map((item) => StatusSectionTile(item: item)).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your Status updates are end to end encrypted 🔒",
                  style: TextStyle(
                    color: Color.fromARGB(255, 49, 165, 113),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
