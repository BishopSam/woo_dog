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
    var constraints = MediaQuery.of(context);
    var heightFactor = constraints.size.height/820.57;
    var widthFactor = constraints.size.width/411.43;
    return Container(
      height: 98*heightFactor,
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 18.0*widthFactor),
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
          SizedBox(width: 10*widthFactor,),
          Padding(
            padding: EdgeInsets.only(top: 20.0*heightFactor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactName,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20*heightFactor,
                  ),
                ),
                Text(
                  messagePreview + '\t\t.\t\t' + time,
                  style: TextStyle(
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 17*heightFactor,
                  ),
                ),
              ],
            ),
          ),
         Spacer(),
          Padding(
            padding:  EdgeInsets.only(right: 15.0*widthFactor),
            child: CircleAvatar(
              radius: 5*widthFactor,
              backgroundColor: color,
            ),
          )
        ],
      ),
    );
  }
}
