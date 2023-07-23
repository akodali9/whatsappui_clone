import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappui_clone/models/chat_model.dart';

class ChatSectionTile extends StatelessWidget {
  const ChatSectionTile({super.key, required this.item});

  final Chat item;

  imgFunc(context) {
    if (item.img_url != "") {
      return Image.network(
        item.img_url,
        fit: BoxFit.cover,
      );
    } else {
      return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onBackground,
          ),
          child: SvgPicture.asset('assets/default_imgs/profile_photo.svg'));
    }
  }

  nCount(context) {
    if (item.notification_count == 0) {
      return const Text("");
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Theme.of(context).colorScheme.secondary,
        ),
        padding: const EdgeInsets.all(5),
        child: Text(
          "${item.notification_count}",
          style: const TextStyle(fontSize: 12),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.all(10.0),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: imgFunc(context),
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.user_name,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Text(
            item.text_msg,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item.time_date),
          nCount(context),
        ],
      ),
    );
  }
}
