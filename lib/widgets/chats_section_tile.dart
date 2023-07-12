import 'package:flutter/material.dart';

class ChatSectionTile extends StatelessWidget {
  const ChatSectionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      splashColor: const Color.fromARGB(255, 174, 213, 175),
      tileColor: Color.fromARGB(255, 240, 238, 238),
      contentPadding: EdgeInsets.all(10.0),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.network(
            "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.webp"
            // "https://cdn-icons-png.flaticon.com/512/2815/2815428.png"
            ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Person 1",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          Text("Hey how are you man?")
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("8:00pm"), Text("2")],
      ),
    );
  }
}
