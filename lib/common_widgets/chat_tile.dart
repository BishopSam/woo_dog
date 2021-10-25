import 'package:flutter/material.dart';

class ChatTile extends ListTile {
  ChatTile({
    this.contactName,
    this.contactProfilePic,
    this.messagePreview,
    this.time,
    this.color,
});

  final String contactName;
  final String messagePreview;
  final String contactProfilePic;
  final String time;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                  'assets/$contactProfilePic',
                fit: BoxFit.fitWidth,
                width: 50,
                height: 50,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactName,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                Text(
                  messagePreview + '\t\t.\t\t' + time,
                  style: TextStyle(
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
         Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              radius: 5,
              backgroundColor: color,
            ),
          )
        ],
      ),
    );
  }
}
