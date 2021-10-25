import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_task/common_widgets/custom_button.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: AppBar(
          backgroundColor: Colors.tealAccent.withOpacity(0.47),
          elevation: 0.0,
        ),
      ),
      body:
      Stack(
          children: [
            Opacity(
              opacity: 0.6,
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ONBOARDING PICTURE.png"),
                      fit: BoxFit.fill

                  ),
                ),
              ),
            ),
            Positioned(
              top: 22,
              left: 16,
              child: Image.asset(
                'assets/paw.png',
                height: 40,
                width: 40,
              ),
            ),
            Positioned(
              top: 16,
              left: 59,
              child:   Text(
                'WOO',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    color: Color(0xffE73A40),
                    fontWeight: FontWeight.w900
                ),
              ),
            ),
            Positioned(
              top: 37,
              left: 60,
              child:  Text(
                'DOG',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    color: Colors.red,
                    fontWeight: FontWeight.w900
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // height: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.1, 0.48, 0.9],
                        colors: [
                          Colors.black,
                          Colors.black87,
                          Colors.black12,
                          // Colors.black12,


                        ]
                    )
                ),
              ),
            ),
            Positioned(
              top: 450,
              left: 122,
              right: 123,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 15.0,
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
            ),

            Positioned(
              top:510,
              left:35,
              right: 22,
              child: Text(
                'Too tired to walk your dog?\n\t\t\t\t\t\t\t\t\t\tLet us help you!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              top: 600,
              left: 45,
              child: CustomButton(
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
              )
            ),
            Positioned(
              top: 690,
              left: 105,
              child: Row(
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
            )

          ]
      ),

    );
  }
}
