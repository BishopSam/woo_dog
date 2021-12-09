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
    var constraints = MediaQuery.of(context);
    var heightFactor = constraints.size.height/820.57;
    var widthFactor = constraints.size.width/411.43;
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
                style: TextStyle(color: Colors.black, fontFamily: 'Poppins', ),
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
              padding:  EdgeInsets.only(left: 8.0*widthFactor, top: 8.0*heightFactor, right: 8.0*widthFactor, bottom: 8.0*widthFactor),
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(left: 18.0*widthFactor, top: 18.0*heightFactor, right: 18.0*widthFactor, bottom: 18.0*widthFactor),
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
              height: 600*heightFactor,
              padding: EdgeInsets.only(left: 200*widthFactor),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.transparent,
                ),
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.0*widthFactor, top: 18.0*heightFactor, right: 18.0*widthFactor, bottom: 18.0*widthFactor),
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
              height: 60*heightFactor,
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
              width: 17*widthFactor,
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
                              size: 29*heightFactor,
                              color: Color(0xffFB724C),
                            ),
                          )
                        : Icon(
                            Icons.mic,
                            size: 29*heightFactor,
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
