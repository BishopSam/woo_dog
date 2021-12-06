import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  var inputText = "";
  var message;

  List<String> messageList = [];

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leadingWidth: 75,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['contactName'],
                style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
              ),
              Text(
                'Tap here for about info',
                style: TextStyle(
                    color: Colors.black, fontSize: 13, fontFamily: 'Inter'),
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                ),
                ClipRRect(
                  child: Image.asset(
                    'assets/${data['contactProfile']}',
                    fit: BoxFit.fitWidth,
                    width: 50,
                    height: 50,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ],
            ),
          ),
          actions: [IconButton(icon: Icon(Icons.call), onPressed: () {})],
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(data['messagePreview']),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffECEEF1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.0),
                      topLeft: Radius.circular(12.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.circular(12.0)),
                ),
              ),
            ),
            Container(
              height: 600,
              padding: EdgeInsets.only(left: 200),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.transparent,
                ),
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(messageList[index], style: TextStyle(color: Colors.white),),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFB724C),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.0),
                          topLeft: Radius.circular(12.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(12.0)),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ]),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffF5F5F5),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Color(0xffFB724C),
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              width: 17,
            ),
            Expanded(
              child: TextFormField(
                controller: controller,
                onChanged: (text) {
                  setState(() {
                    inputText = text;
                  });
                },
                showCursor: true,
                decoration: InputDecoration(
                    suffixIcon: inputText.length > 0
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                message = controller.text;
                              });
                              controller.clear();
                              messageList.add(message);
                              print(messageList);
                            },
                            child: Icon(
                              Icons.send,
                              size: 29,
                              color: Color(0xffFB724C),
                            ),
                          )
                        : Icon(
                            Icons.mic,
                            size: 29,
                            color: Color(0xffFB724C),
                          ),
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
