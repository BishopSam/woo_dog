import 'package:flutter/material.dart';
import 'package:interview_task/common_widgets/custom_button.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
        Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,
              child: Text('1',
                style: TextStyle(
                    color: Colors.black
                ),
              ),
              backgroundColor: Colors.white,

            ),
          ),
          ColoredBox(color: Colors.white,
            child: Container(
              height: 2,
              width: 10,
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15.0,
              child: Text('2'),
              backgroundColor: Colors.black54,
            ),
          ),
          ColoredBox(color: Colors.white,
            child: Container(
              height: 2,
              width: 10,
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15.0,
              child: Text('3'),
              backgroundColor: Colors.black54,
            ),
          ),
        ],
      ),
     SizedBox(height: 37,),
     Text(
    'Too tired to walk your dog?\n\t\t\t\t\t\t\t\t\t\tLet us help you!',
    style: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.w800,
    ),
    ),
    SizedBox(height: 22,),
    CustomButton(
    onPressed: () => Navigator.pushNamed(context, '/register'),
    height: 58,
    width: 324,
    borderRadius: 12.0,
    child: Text(
    'Join Our Community',
    style: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 17,
    color: Colors.white
    ),
    ),
    ),
     SizedBox(height: 22,),
     Row(
    children: [
    Text(
    'Already a Member?',
    style: TextStyle(
    fontFamily: 'PoppinsBold',
    color: Colors.white,
    fontSize: 16
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left:8.0),
    child: Text(
    'Sign In',
    style: TextStyle(
    fontFamily: 'PoppinsBold',
    color: Color(0xffE73A40),
    fontSize: 16
    ),
    ),
    )
    ],
    ),
    ]
    )
    ;
  }
}

