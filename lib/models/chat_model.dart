class Chat {
  final String img_url;
  final String user_name;
  final String text_msg;
  final String time_date;
  final int notification_count;

  const Chat({
    required this.img_url,
    required this.user_name,
    required this.notification_count,
    required this.text_msg,
    required this.time_date,
  });
}
