import 'package:flutter/material.dart';
import 'package:interview_task/common_widgets/chat_tile.dart';
import 'package:interview_task/models/chat_model.dart';
import 'package:interview_task/screens/chat_screen.dart';

class ChatFragment extends StatefulWidget {
  const ChatFragment({Key key}) : super(key: key);
  @override
  _ChatFragmentState createState() => _ChatFragmentState();
}

class _ChatFragmentState extends State<ChatFragment> {

   List<ChatTile> chats;

   List<String> contactNames = ['Alex Murray', 'Will Knowles', 'Ryan Bond', 'Sirena Paul', 'Matt Chapman', 'Laura Pierce'];
   List contactProfilePics = ['IMAGE.png', 'profilepic.png', 'profilepic1.png', 'profilepic2.png', 'profilepic3.png', 'profilepic4.png'];
   List messagePreviews = ['Hey! Long time no see', 'You fed the dog?', 'How are you doing?', 'Hey! Hows your dog?', 'Hey there!', 'Lets go out'];
   List times= ['1min', '1min', '5hrs', '7hrs', '6hrs', '10hrs'];

   List<ChatModel> data;


  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context);
    var heightFactor = constraints.size.height/819;
    var widthFactor = constraints.size.width/411;

    data = List.generate(contactNames.length, (index) => ChatModel(contactName: '${contactNames[index]}', contactProfilePic: '${contactProfilePics[index]}', messagePreview: '${messagePreviews[index]}', time: '${times[index]}'));
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.0*widthFactor, top: 55*heightFactor),
            child: Text(
              'Chat',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 34*heightFactor
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0*widthFactor, right: 18.0*widthFactor, top: 22*heightFactor),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  )
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              shrinkWrap: true,
              itemCount: data.length,
                itemBuilder: (context, int index){
              return Container(
                child: GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen(chatScreenModel: data[index],)));
                    Navigator.pushNamed(context, '/chatScreen', arguments: {
                      'contactName' : contactNames[index],
                      'messagePreview' : messagePreviews[index],
                      'contactProfile' : contactProfilePics[index],
                    });

                  },
                    child: ChatTile(contactName: data[index].contactName, contactProfilePic: data[index].contactProfilePic, messagePreview: data[index].messagePreview, time: data[index].time, color: index.isEven ? Colors.orange:Colors.transparent,)),
              );
            }),
          ),
        ],
      ),
    );
  }
}
