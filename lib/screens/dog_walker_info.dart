import 'package:flutter/material.dart';
import 'package:interview_task/models/chat_model.dart';
import 'package:interview_task/screens/chat_screen.dart';

class AboutInfoScreen extends StatelessWidget {
  final ChatScreen aboutScreenModel;
  AboutInfoScreen({this.aboutScreenModel});


  @override
  Widget build(BuildContext context) {

    Map data = ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                          'assets/${data['contactProfilePic']}',
                        fit: BoxFit.fill,
                        height: 240,
                        width: 240,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xffF7F7F8).withOpacity(0.5),
                          child: Icon(
                                Icons.clear,
                              color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 101,
                        height: 44,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                  'Verified',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(width: 10,),
                              Icon(
                                  Icons.check_box,
                                color: Colors.white,
                              )
                            ],
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffF7F7F8).withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19)
                            )
                  )
    ),
                      ),
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
