import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappui_clone/models/community_model.dart';
import 'package:whatsappui_clone/widgets/community_section_tile.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<Communities> comms = [
    Communities(
      comm_img_url: "",
      comm_name: "Project Team 1",
      announcement_desc: "Find out new changes here",
      announcement_img: "",
      announcement_Time_DATE: "7/3/23",
      group_name: "Frontend team",
      group_desc: "Flutter is cool",
      group_Time_Date: "3pm",
      group_img_url: "",
    ),
    Communities(
      comm_img_url:
          "https://images.pexels.com/photos/3184398/pexels-photo-3184398.jpeg?auto=compress&cs=tinysrgb&w=600",
      comm_name: "Family",
      announcement_desc: "Good loving people",
      announcement_img: "",
      announcement_Time_DATE: "7/3/23",
      group_name: "Weeknd plans",
      group_desc: "Everyone up for the hiking plan this Sunday?",
      group_Time_Date: "2pm",
      group_img_url: "",
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
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(10.0),
              leading: AspectRatio(
                aspectRatio: 1 / 1,
                child: SvgPicture.asset(
                  'assets/default_imgs/profile_photo.svg',
                ),
              ),
              title: const Text("New Community"),
            ),
            Container(
              child: Column(
                children: comms
                    .map((item) => CommunitySectionTile(item: item))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
