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

  List <String> dogWalkerNames = ['Alex Murray', 'Mason Green', 'Mason York', 'Mason York', 'Mason York' ];
  List <String> dogWalkerAssets = ['IMAGE.png', 'dogwalker1.png', 'dogwalker1.png', 'dogwalker1.png', 'dogwalker1.png'];
  List <int> dogWalkerDistances =  [4, 7, 9, 2, 10];
  List <String> dogWalkerRates = ['#10', '#7', '#5', '#9', '#4'];
  List<String> dogWalkerAges = ['30 years', '25 years', '32 years', '33 years', '20 years'];
  List<String> dogWalkerExperiences = ['11 months' , '9 months' , '2 years', '6 months', '1 year'];
  List<String> dogWalkerRatings = ['4.4', '4.9', '5.0', '4.2', '4.0'];
  List<String> dogWalkerWalks = ['450', '350','230','270', '99' ];

  List<DogWalker> data;

  List <String> suggestedDogWalkerNames = ['Trina Kain', 'Kyle Walker', 'Kyle York', 'Mason York', 'Mason York' ];
  List <String> suggestedDogWalkerAssets = ['dogwalker2.png', 'dogwalker1.png', 'dogwalker1.png', 'dogwalker1.png', 'dogwalker1.png'];
  List <int> suggestedDogWalkerDistances =  [14, 3, 9, 12, 10];
  List <String> suggestedDogWalkerRates = ['#10', '#7', '#5', '#9', '#4'];
  List<String> suggestedDogWalkerAges = ['25 years', '26 years', '32 years', '33 years', '20 years'];
  List<String> suggestedDogWalkerExperiences = ['12 months' , '3 months' , '1 years', '8 months', '3 year'];
  List<String> suggestedDogWalkerRatings = ['4.9', '4.5', '5.0', '4.2', '4.0'];
  List<String> suggestedDogWalkerWalks = ['434', '300','230','150', '99' ];


  List<DogWalker> suggestedData;

  List<Widget> suggestedDogWalkers = [
    DogWalker(asset: 'dogwalker2.png', distance: 14, name: 'Trina Kain', rate: '#10',),
    DogWalker(asset: 'dogwalker1.png', distance: 3, name: 'Kyle Walker', rate: '#7',),
    DogWalker(asset: 'dogwalker1.png', distance: 9, name: 'Mason York', rate: '#5',),
    DogWalker(asset: 'dogwalker1.png', distance: 12, name: 'Mason York', rate: '#9',),
    DogWalker(asset: 'dogwalker1.png', distance: 5, name: 'Mason York', rate: '#4',)
  ];

  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context);
    var heightFactor = constraints.size.height/820.57;
    var widthFactor = constraints.size.width/411.43;
    data = List.generate(dogWalkerNames.length, (index) => DogWalker(name: '${dogWalkerNames[index]}', rate: '${dogWalkerRates[index]}', distance: dogWalkerDistances[index], asset: '${dogWalkerAssets[index]}', ));
    suggestedData = List.generate(suggestedDogWalkerNames.length, (index) => DogWalker(name: '${suggestedDogWalkerNames[index]}', rate: '${suggestedDogWalkerRates[index]}', distance: suggestedDogWalkerDistances[index], asset: '${suggestedDogWalkerAssets[index]}', ));
    return Container(
      child: ListView(

        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0*widthFactor),
                child: Text('Home',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 34*heightFactor,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding:  EdgeInsets.only(left: 8.0*widthFactor, top: 8.0*heightFactor, right: 8.0*widthFactor,),
                child: CustomButton(height: 50*heightFactor, width: 133*widthFactor, child: Row(
                  children: [
                    Icon(Icons.add,
                      color: Colors.white,
                      size: 17,
                    ),
                    SizedBox(width: 5.0,),
                    Text('Book a walk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13*heightFactor
                      ),
                    ),
                  ],
                ), borderRadius: 12.0*widthFactor,),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: 18.0*widthFactor),
            child: Text('Explore Dog Walkers',
              style: TextStyle(
                fontFamily: 'PoppinsLight',
                fontSize: 17,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          SizedBox(height: 22*heightFactor,),
          Padding(
            padding:  EdgeInsets.only(left: 18.0*widthFactor, right: 18.0*widthFactor, top: 5.0*heightFactor, bottom: 10.0*heightFactor),
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
                padding:  EdgeInsets.only(left: 18.0*widthFactor, top: 22*heightFactor),
                child: Text(
                  'Near You',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 34*heightFactor,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding:  EdgeInsets.only(top: 25.0*heightFactor, right: 16.0*widthFactor),
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15*heightFactor,
                    decoration: TextDecoration.underline
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10*heightFactor,),
          Container(
            height: 200*heightFactor,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, int index) {
                return Container(
                  height: 200*heightFactor, width: 180*widthFactor,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/dogWalkerInfo', arguments: {
                        'dogWalkerNames' : dogWalkerNames[index],
                        'dogWalkerRates' : dogWalkerRates[index],
                        'dogWalkerAssets' : dogWalkerAssets[index],
                        'dogWalkerDistances' : dogWalkerDistances[index],
                        'dogWalkerAges' : dogWalkerAges[index],
                        'dogWalkerExperiences' : dogWalkerExperiences[index],
                        'dogWalkerRatings': dogWalkerRatings[index],
                        'dogWalkerWalks' : dogWalkerWalks[index]
                      });
                    },
                      child: DogWalker(name: data[index].name, asset: data[index].asset, rate: data[index].rate, distance: data[index].distance,)
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 18.0*widthFactor, ),
                child: Text(
                  'Suggested',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 34*heightFactor,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding:  EdgeInsets.only( right: 16.0*widthFactor),
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontFamily: 'PoppinsSemiBold',
                      fontSize: 15*heightFactor,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10*heightFactor,),
          Container(
            height: 200*heightFactor,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: suggestedData.length,
              itemBuilder: (context, int index) {
                return Container(
                  height: 200*heightFactor, width: 180*widthFactor,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/dogWalkerInfo', arguments: {
                          'dogWalkerNames' : suggestedDogWalkerNames[index],
                          'dogWalkerRates' : suggestedDogWalkerRates[index],
                          'dogWalkerAssets' : suggestedDogWalkerAssets[index],
                          'dogWalkerDistances' : suggestedDogWalkerDistances[index],
                          'dogWalkerAges' : suggestedDogWalkerAges[index],
                          'dogWalkerExperiences' : suggestedDogWalkerExperiences[index],
                          'dogWalkerRatings': suggestedDogWalkerRatings[index],
                          'dogWalkerWalks' : suggestedDogWalkerWalks[index]
                        });
                      },
                      child: DogWalker(name: suggestedData[index].name, asset: suggestedData[index].asset, rate: suggestedData[index].rate, distance: suggestedData[index].distance,)
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
