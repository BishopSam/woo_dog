import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/common_widgets/custom_button.dart';
import 'package:interview_task/common_widgets/dog_walkers.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key key}) : super(key: key);

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {

  List<Widget> dogWalkers = [
    DogWalker(asset: 'dogwalker1.png', distance: 4, name: 'Mason York', rate: '#10',),
    DogWalker(asset: 'dogwalker1.png', distance: 7, name: 'Mark Green', rate: '#7',),
    DogWalker(asset: 'dogwalker1.png', distance: 9, name: 'Mason York', rate: '#5',),
    DogWalker(asset: 'dogwalker1.png', distance: 2, name: 'Mason York', rate: '#9',),
    DogWalker(asset: 'dogwalker1.png', distance: 10, name: 'Mason York', rate: '#4',)
  ];

  List<Widget> suggestedDogWalkers = [
    DogWalker(asset: 'dogwalker2.png', distance: 14, name: 'Trina Kain', rate: '#10',),
    DogWalker(asset: 'dogwalker1.png', distance: 3, name: 'Kyle Walker', rate: '#7',),
    DogWalker(asset: 'dogwalker1.png', distance: 9, name: 'Mason York', rate: '#5',),
    DogWalker(asset: 'dogwalker1.png', distance: 12, name: 'Mason York', rate: '#9',),
    DogWalker(asset: 'dogwalker1.png', distance: 5, name: 'Mason York', rate: '#4',)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(

        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Home',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 34,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0,),
                child: CustomButton(height: 50, width: 133, child: Row(
                  children: [
                    Icon(Icons.add,
                      color: Colors.white,
                      size: 17,
                    ),
                    SizedBox(width: 5.0,),
                    Text('Book a walk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                      ),
                    ),
                  ],
                ), borderRadius: 12.0,),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text('Explore Dog Walkers',
              style: TextStyle(
                fontFamily: 'PoppinsLight',
                fontSize: 17,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          SizedBox(height: 22,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 5.0, bottom: 10.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on_outlined),
                suffixIcon: Icon(Icons.settings),
                hintText: 'Kiyv, Ukraine',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 22),
                child: Text(
                  'Near You',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 34,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 16.0),
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15,
                    decoration: TextDecoration.underline
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dogWalkers.length,
              itemBuilder: (context, int index) {
                return Container(
                  height: 200, width: 180,
                  child: dogWalkers[index],
                );
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, ),
                child: Text(
                  'Suggested',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 34,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only( right: 16.0),
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontFamily: 'PoppinsSemiBold',
                      fontSize: 15,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: suggestedDogWalkers.length,
              itemBuilder: (context, int index) {
                return Container(
                  height: 200, width: 180,
                  child: suggestedDogWalkers[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
