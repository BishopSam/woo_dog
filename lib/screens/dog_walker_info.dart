

import 'package:flutter/material.dart';
import 'package:interview_task/common_widgets/custom_button.dart';
import 'package:interview_task/models/chat_model.dart';
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
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    list.add(_currentPage == 0 ? GestureDetector(onTap: () {_pageController.jumpToPage(0);},child: indicator(true, 'About')) : GestureDetector(onTap: () {_pageController.jumpToPage(0);},child: indicator(false, 'About')));
    list.add(_currentPage == 1 ? GestureDetector(onTap: () {_pageController.jumpToPage(1);},child: indicator(true, 'Location'))  : GestureDetector(onTap: () {_pageController.jumpToPage(1);},child: indicator(false, 'Location')));
    list.add(_currentPage == 2 ? GestureDetector(onTap: () {_pageController.jumpToPage(2);},child: indicator(true, 'Reviews'))  : GestureDetector(onTap: () {_pageController.jumpToPage(2);},child: indicator(false, 'Reviews')));
    anotherList = list;
    return list;
  }

  // The Single Tab
  Widget indicator(bool isCurrent, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      height: 44,
      width: 99,
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
              Container(
                child: Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset(
                            'assets/${data['dogWalkerAssets']}',
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
                            backgroundColor: Colors.orange,
                            child: Icon(
                                  Icons.clear,
                                color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: Text(
                  '${data['dogWalkerNames']}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    color: Colors.orange
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, top: 15),
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
                          SizedBox(width: 4,),
                          Text('/hr',
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiLight'
                            ),
                          )
                        ],
                      ),
                      VerticalDivider(width: 20.0, color: Colors.black54, thickness: 1.0,),
                      Row(
                        children: [
                          Text(
                            '${data['dogWalkerDistances']}',
                            style: TextStyle(
                              fontFamily: 'PoppinsBold'
                            ),
                          ),
                          SizedBox(width: 4,),
                          Text(
                            'km',
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiLight'
                            ),
                          )
                        ],
                      ),
                      VerticalDivider(width: 20.0, color: Colors.black54, thickness: 1.0,),
                      Text(
                        data['dogWalkerRatings'],
                        style: TextStyle(
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                      VerticalDivider(width: 20.0, color: Colors.black54, thickness: 1.0,),
                      Row(
                        children: [
                          Text(
                            data['dogWalkerWalks'],
                            style: TextStyle(
                              fontFamily: 'PoppinsBold',
                            ),
                          ),
                          SizedBox( width: 5,),
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
                padding: const EdgeInsets.all(16.0),
                child: Divider(thickness: 1,),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
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
                                padding: const EdgeInsets.only(left: 30.0, top: 22),
                                child: Row(
                                  children: [
                                    Text(
                                        'Age',
                                      style: TextStyle(
                                        color: Color(0xffB0B0B0),
                                        fontFamily: 'PoppinsSemiLight',
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(width: 92,),
                                    Text(
                                      'Experience',
                                      style: TextStyle(
                                          color: Color(0xffB0B0B0),
                                          fontFamily: 'PoppinsSemiLight',
                                        fontSize: 15
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0,),
                                child: Row(
                                  children: [
                                    Text(
                                      data['dogWalkerAges'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'PoppinsBold',
                                          fontSize: 19
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Text(
                                      data['dogWalkerExperiences'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'PoppinsBold',
                                          fontSize: 19
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0, top: 22, right: 30),
                                child: Text(
                                    '${data['dogWalkerNames']}'+'$dogWalkerDesc',
                                  style: TextStyle(
                                    color: Color(0xffB0B0B0),
                                    fontSize: 17,
                                    fontFamily: 'PoppinsSemiLight'
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 35.0),
                                child: CustomButton(height: 55, width: 350, child: Text('Check Schedule', style: TextStyle(fontFamily: 'Poppins', fontSize: 20),), onPressed: (){}, borderRadius: 12.0,),
                              )
                            ],
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 70,
                          ),
                          Text('${data['dogWalkerDistances']} km \naway ',
                            style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 35,
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: Text('Reviews',
                          style: TextStyle(
                            fontSize: 35,
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
      ),
    );
  }
}
