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

    data = List.generate(contactNames.length, (index) => ChatModel(contactName: '${contactNames[index]}', contactProfilePic: '${contactProfilePics[index]}', messagePreview: '${messagePreviews[index]}', time: '${times[index]}'));
 // chats = [
 //      ChatTile(contactName: 'Alex Murray', messagePreview: 'Hey There!', time: '1min', color: Colors.orange, contactProfilePic: 'IMAGE.png',),
 //      ChatTile(contactName: 'Will Knowles', messagePreview: 'Hey! How\'s Your Dog', time: '1min', color: Colors.orange, contactProfilePic: 'profilepic.png',),
 //      ChatTile(contactName: 'Ryan Bond', messagePreview: 'Let\'s Go Out', time: '5hrs', color: Colors.transparent,contactProfilePic: 'profilepic4.png',),
 //      ChatTile(contactName: 'Sirena Paul', messagePreview: 'Hey! Longtime no see', time: '1min', color: Colors.orange,contactProfilePic: 'profilepic1.png',),
 //      ChatTile(contactName: 'Matt Chapman', messagePreview: 'You fed the dog', time: '6hrs', color: Colors.transparent,contactProfilePic: 'profilepic3.png',),
 //      ChatTile(contactName: 'Laura Pierce', messagePreview: 'Hpw are you doing?', time: '7hrs', color: Colors.transparent,contactProfilePic: 'profilepic2.png',),
 //      ChatTile(contactName: 'Hazel Bread', messagePreview: 'Hey! Longtime no see', time: '5hrs', color: Colors.transparent,contactProfilePic: 'profilepic1.png',),
 //      ChatTile(contactName: 'Will Knowles', messagePreview: 'Hey! How\'s Your Dog', time: '1min', color: Colors.orange,contactProfilePic: 'profilepic3.png',),
 //    ];

    // chats = [
    //   ChatTile(chatModel: ,)
    // ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 55),
            child: Text(
              'Chat',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 34
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 22),
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
