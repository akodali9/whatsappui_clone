import 'package:flutter/material.dart';
import 'package:whatsappui_clone/models/calls_model.dart';
import 'package:whatsappui_clone/widgets/calls_section_tile.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Calling> items = [
      Calling(
          TIME_DATE: "6pm",
          User_img: "",
          User_name: "Bob",
          type_of_call: "audio"),
      Calling(
        TIME_DATE: "5:48pm",
        User_img:
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        User_name: "Zuck",
        type_of_call: "audio",
      ),
      Calling(
        TIME_DATE: "3pm",
        User_img: "",
        User_name: "Mom",
        type_of_call: "video",
      ),
      Calling(
        TIME_DATE: "1pm",
        User_img:
            "https://images.pexels.com/photos/3184398/pexels-photo-3184398.jpeg?auto=compress&cs=tinysrgb&w=600",
        User_name: "The Bros",
        type_of_call: "audio",
      ),
      Calling(
        TIME_DATE: "11am",
        User_img: "",
        User_name: "Mom",
        type_of_call: "audio",
      ),
      Calling(
        TIME_DATE: "10:45am",
        User_img: "",
        User_name: "Dad",
        type_of_call: "audio",
      ),
      Calling(
        TIME_DATE: "9:45am",
        User_img:
            "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        User_name: "Amanda",
        type_of_call: "video",
      ),
      Calling(
        TIME_DATE: "8:20am",
        User_img:
            "https://img.freepik.com/free-photo/indian-businessman-with-his-white-car_496169-2889.jpg?w=740&t=st=1690111144~exp=1690111744~hmac=107a6db170b2b34f6958540e6fcc7340ab082cfc777a826ca61ff9e340f9f515",
        User_name: "Ashwin",
        type_of_call: "audio",
      ),
      Calling(
        TIME_DATE: "Yesterday",
        User_img: "",
        User_name: "+91821234945",
        type_of_call: "audio",
      ),
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
          children: [
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(10.0),
              leading: const AspectRatio(
                  aspectRatio: 1 / 1, child: Icon(Icons.link)),
              title: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Call Link",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Share a link for youw Whatsapp call",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children:
                  items.map((item) => CallsSectionTile(item: item)).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your Calls are end to end encrypted 🔒",
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
