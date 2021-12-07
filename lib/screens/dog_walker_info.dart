import 'package:flutter/material.dart';
import 'package:interview_task/common_widgets/custom_button.dart';
import 'package:interview_task/screens/chat_screen.dart';

class DogWalkerInfo extends StatefulWidget {
  final ChatScreen aboutScreenModel;
  DogWalkerInfo({this.aboutScreenModel});

  @override
  State<DogWalkerInfo> createState() => _DogWalkerInfoState();
}

class _DogWalkerInfoState extends State<DogWalkerInfo> {

  String dogWalkerDesc = ' has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter Regularly';
  bool isCurrentPage;
  List<Widget> anotherList = [];
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  // The Three Tabs
  List<Widget> _buildPageIndicator(double height, double width) {
    List<Widget> list = [];
    list.add(_currentPage == 0 ? GestureDetector(onTap: () {_pageController.jumpToPage(0);},child: indicator(true, 'About', height, width)) : GestureDetector(onTap: () {_pageController.jumpToPage(0);},child: indicator(false, 'About',  height, width)));
    list.add(_currentPage == 1 ? GestureDetector(onTap: () {_pageController.jumpToPage(1);},child: indicator(true, 'Location',  height, width))  : GestureDetector(onTap: () {_pageController.jumpToPage(1);},child: indicator(false, 'Location', height, width)));
    list.add(_currentPage == 2 ? GestureDetector(onTap: () {_pageController.jumpToPage(2);},child: indicator(true, 'Reviews', height, width))  : GestureDetector(onTap: () {_pageController.jumpToPage(2);},child: indicator(false, 'Reviews', height, width)));
    anotherList = list;
    return list;
  }

  // The Single Tab
  Widget indicator(bool isCurrent, String text, double height,double width) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      height: height,
      width: width,
      child: Center(
        child: Text(
            text,
          style: TextStyle(
            color: isCurrent ? Colors.white : Color(0xffB0B0B0),
            fontFamily: 'PoppinsBold'
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: isCurrent ? Colors.black : Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context);
    var heightFactor = constraints.size.height/819;
    var widthFactor = constraints.size.width/411;

    Map data = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      body: SafeArea(
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
        child: Column(
        children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0*widthFactor, top: 8.0*heightFactor, right: 8.0*widthFactor, bottom: 8.0*widthFactor),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 15.0*widthFactor,
                    child: Icon(
                          Icons.clear,
                        color: Colors.white,
                      size: 20*heightFactor,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
               child:
                Center(
            child: ClipRRect(
            borderRadius: BorderRadius.circular(200*widthFactor),
          child: Image.asset(
            'assets/${data['dogWalkerAssets']}',
            fit: BoxFit.fill,
            height: 230*heightFactor,
            width: 230*widthFactor,
          ),
        ),
      ),
            ),
            SizedBox(height: 22*heightFactor,),
            Center(
              child: Text(
                '${data['dogWalkerNames']}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28*heightFactor,
                  color: Colors.orange
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 90.0*widthFactor, top: 15*heightFactor),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          '${data['dogWalkerRates']}',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold'
                          ),
                        ),
                        SizedBox(width: 4*widthFactor,),
                        Text('/hr',
                          style: TextStyle(
                            fontFamily: 'PoppinsSemiLight'
                          ),
                        )
                      ],
                    ),
                    VerticalDivider(width: 20.0*widthFactor, color: Colors.black54, thickness: 1.0,),
                    Row(
                      children: [
                        Text(
                          '${data['dogWalkerDistances']}',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold'
                          ),
                        ),
                        SizedBox(width: 4*widthFactor,),
                        Text(
                          'km',
                          style: TextStyle(
                            fontFamily: 'PoppinsSemiLight'
                          ),
                        )
                      ],
                    ),
                    VerticalDivider(width: 20.0*widthFactor, color: Colors.black54, thickness: 1.0,),
                    Text(
                      data['dogWalkerRatings'],
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
                    VerticalDivider(width: 20.0*widthFactor, color: Colors.black54, thickness: 1.0,),
                    Row(
                      children: [
                        Text(
                          data['dogWalkerWalks'],
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                          ),
                        ),
                        SizedBox( width: 5*widthFactor,),
                        Text(
                          'walks',
                          style: TextStyle(
                            fontFamily: 'PoppinsSemiLight'
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0*widthFactor, top: 16.0*heightFactor, right: 16.0*widthFactor, bottom: 16.0*widthFactor),
              child: Divider(thickness: 1,),
            ),

            Wrap(
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(44*heightFactor, 99*widthFactor),
              ),
              ]
            ),

            Expanded(
              child: Container(
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  onPageChanged: (page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  controller: _pageController,
                  children: <Widget>[
                    Container(
                        child:Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30.0*widthFactor, top: 22*heightFactor),
                              child: Row(
                                children: [
                                  Text(
                                      'Age',
                                    style: TextStyle(
                                      color: Color(0xffB0B0B0),
                                      fontFamily: 'PoppinsSemiLight',
                                      fontSize: 15*heightFactor
                                    ),
                                  ),
                                  SizedBox(width: 92*widthFactor,),
                                  Text(
                                    'Experience',
                                    style: TextStyle(
                                        color: Color(0xffB0B0B0),
                                        fontFamily: 'PoppinsSemiLight',
                                      fontSize: 15*heightFactor
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 30.0*widthFactor,),
                              child: Row(
                                children: [
                                  Text(
                                    data['dogWalkerAges'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'PoppinsBold',
                                        fontSize: 19*heightFactor
                                    ),
                                  ),
                                  SizedBox(width: 40*widthFactor,),
                                  Text(
                                    data['dogWalkerExperiences'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'PoppinsBold',
                                        fontSize: 19*heightFactor
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 30.0*widthFactor, top: 22*heightFactor, right: 30*widthFactor),
                              child: Text(
                                  '${data['dogWalkerNames']}'+'$dogWalkerDesc',
                                style: TextStyle(
                                  color: Color(0xffB0B0B0),
                                  fontSize: 17*heightFactor,
                                  fontFamily: 'PoppinsSemiLight'
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 35.0*heightFactor),
                              child: CustomButton(height: 55*heightFactor, width: 350*widthFactor, child: Text('Check Schedule', style: TextStyle(fontFamily: 'Poppins', fontSize: 20*heightFactor),), onPressed: (){}, borderRadius: 12.0*widthFactor,),
                            )
                          ],
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 70*heightFactor,
                        ),
                        Text('${data['dogWalkerDistances']} km \naway ',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 35*heightFactor,
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Text('Reviews',
                        style: TextStyle(
                          fontSize: 35*heightFactor,
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
          ),
    ]
      ),
    )
      )
    );
  }
}
