import 'package:flutter/material.dart';
import 'package:whatsappui_clone/models/calls_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallsSectionTile extends StatelessWidget {
  const CallsSectionTile({super.key, required this.item});

  final Calling item;
  @override
  Widget build(BuildContext context) {
    imgfunc(String user_img) {
      if (user_img != "") {
        return Image.network(
          user_img,
          fit: BoxFit.cover,
        );
      } else {
        return SvgPicture.asset('assets/default_imgs/profile_photo.svg');
      }
    }

    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.all(10.0),
      leading: AspectRatio(
        aspectRatio: 1 / 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: imgfunc(item.User_img),
        ),
      ),
      title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.User_name),
            Text(item.TIME_DATE),
          ]),
      trailing: IconButton(
          onPressed: () {},
          icon: (item.type_of_call == "audio"
              ? Icon(Icons.call)
              : Icon(Icons.video_call))),
    );
  }
}
