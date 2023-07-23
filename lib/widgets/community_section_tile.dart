import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappui_clone/models/community_model.dart';

class CommunitySectionTile extends StatelessWidget {
  const CommunitySectionTile({super.key, required this.item});

  final Communities item;
  imgFunc(imgUrl, context) {
    if (imgUrl != "") {
      return Image.network(
        imgUrl,
        fit: BoxFit.cover,
      );
    } else {
      return Container(
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.onBackground),
          child: SvgPicture.asset('assets/default_imgs/profile_photo.svg'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
          child: Container(
            color: Theme.of(context).dividerColor,
          ),
        ),
        ListTile(
          onTap: () {},
          contentPadding: const EdgeInsets.all(10.0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: AspectRatio(
                aspectRatio: 1 / 1, child: imgFunc(item.comm_img_url, context)),
          ),
          title: Text(item.comm_name),
        ),
        ListTile(
          onTap: () {},
          contentPadding: const EdgeInsets.all(10.0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: imgFunc(item.announcement_img, context),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Announcements"),
              Text(item.announcement_desc),
            ],
          ),
          trailing: Text(item.announcement_Time_DATE),
        ),
        ListTile(
          onTap: () {},
          contentPadding: const EdgeInsets.all(10.0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: imgFunc(item.group_img_url, context),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.group_name),
              Text(item.group_desc),
            ],
          ),
          trailing: Text(item.group_Time_Date),
        ),
        ListTile(
          onTap: () {},
          contentPadding: const EdgeInsets.all(10.0),
          leading: const AspectRatio(
              aspectRatio: 1 / 1, child: Icon(Icons.arrow_forward_ios)),
          title: const Text(
            "View all",
          ),
        ),
      ],
    );
  }
}
