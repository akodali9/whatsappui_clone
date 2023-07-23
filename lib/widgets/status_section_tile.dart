import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappui_clone/models/status_model.dart';

class StatusSectionTile extends StatelessWidget {
  const StatusSectionTile({super.key, required this.item});

  final Status item;

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

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.all(10.0),
      leading: Container(
        foregroundDecoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 49, 165, 113),
            ),
            borderRadius: BorderRadius.circular(50)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: imgFunc(context),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item.user_name),
          Text(
            item.Time_Date,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
