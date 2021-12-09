import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_task/common_widgets/custom_button.dart';

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  //
  // class SizeConfig {
  // static MediaQueryData _mediaQueryData;
  // static double screenWidth;
  // static double screenHeight;
  // static double blockSizeHorizontal;
  // static double blockSizeVertical;
  //
  // static double _safeAreaHorizontal;
  // static double _safeAreaVertical;
  // static double safeBlockHorizontal;
  // static double safeBlockVertical;
  //
  // void init(BuildContext context) {
  // _mediaQueryData = MediaQuery.of(context);
  // screenWidth = _mediaQueryData.size.width;
  // screenHeight = _mediaQueryData.size.height;
  // blockSizeHorizontal = screenWidth / 100;
  // blockSizeVertical = screenHeight / 100;
  //
  // _safeAreaHorizontal = _mediaQueryData.padding.left +
  // _mediaQueryData.padding.right;
  // _safeAreaVertical = _mediaQueryData.padding.top +
  // _mediaQueryData.padding.bottom;
  // safeBlockHorizontal = (screenWidth -
  // _safeAreaHorizontal) / 100;
  // safeBlockVertical = (screenHeight -
  // _safeAreaVertical) / 100;
  // }
  // }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context);

    var heightFactor = constraints.size.height/820.57;
    var widthFactor = constraints.size.width/411.43;
    print(constraints.size.width);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: AppBar(
          backgroundColor: Colors.tealAccent.withOpacity(0.47),
          elevation: 0.0,
        ),
      ),
      body:
      SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: Container(
                        height: constraints.size.height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ONBOARDING PICTURE.png"),
                              fit: BoxFit.contain

                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 22 * heightFactor,
                      left: 16 *widthFactor,
                      child: Image.asset(
                        'assets/paw.png',
                        height:40 * heightFactor,
                        width: 40 * widthFactor,
                      ),
                    ),
                    Positioned(
                      top: 16 * heightFactor,
                      left: 59 *widthFactor,
                      child:   Text(
                        'WOO',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22 *heightFactor,
                            color: Color(0xffE73A40),
                            fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                    Positioned(
                      top: 37*heightFactor,
                      left: 60*widthFactor,
                      child:  Text(
                        'DOG',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22*heightFactor,
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
                      top: 450*heightFactor,
                      left: 122*widthFactor,
                      right: 123*widthFactor,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0*widthFactor, top: 8.0*heightFactor, right: 8.0*widthFactor, bottom: 8.0*widthFactor),
                            child: CircleAvatar(
                              radius: 15*widthFactor,
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
                              height: 2*heightFactor,
                              width: 10*widthFactor,
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0*widthFactor, top: 8.0*heightFactor, right: 8.0*widthFactor, bottom: 8.0*widthFactor),
                            child: CircleAvatar(
                              radius: 15.0*widthFactor,
                              child: Text('2'),
                              backgroundColor: Colors.black54,
                            ),
                          ),
                          ColoredBox(color: Colors.white,
                            child: Container(
                              height: 2*heightFactor,
                              width: 10*widthFactor,
                            ),

                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 8.0*widthFactor, top: 8.0*heightFactor, right: 8.0*widthFactor, bottom: 8.0*widthFactor),
                            child: CircleAvatar(
                              radius: 15.0*widthFactor,
                              child: Text('3'),
                              backgroundColor: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      top:510*heightFactor,
                      left:39*widthFactor,
                      child: Text(
                        'Too tired to walk your dog?\n\t\t\t\t\t\t\t\tLet us help you!',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 25*heightFactor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 600*heightFactor,
                      left: 45*widthFactor,
                      child: CustomButton(
                        onPressed: () => Navigator.pushNamed(context, '/register'),
                        height: 58*heightFactor,
                        width: 324*widthFactor,
                        borderRadius: 12.0*widthFactor,
                        child: Text(
                          'Join Our Community',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17*heightFactor,
                            color: Colors.white
                          ),
                        ),
                      )
                    ),
                    Positioned(
                      top: 690*heightFactor,
                      left: 105*widthFactor,
                      child: Row(
                        children: [
                          Text(
                            'Already a Member?',
                            style: TextStyle(
                                fontFamily: 'PoppinsBold',
                                color: Colors.white,
                                fontSize: 16*heightFactor
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontFamily: 'PoppinsBold',
                                  color: Color(0xffE73A40),
                                  fontSize: 16*heightFactor
                              ),
                            ),
                          )
                        ],
                      ),
                    )

                  ]
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}
