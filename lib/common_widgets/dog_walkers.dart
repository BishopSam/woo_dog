
import 'package:flutter/material.dart';

class DogWalker extends StatelessWidget {
  DogWalker({this.rate, this.name, this.distance, this.asset, this.onPressed});
  final String asset, name, rate;
  final int distance;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context);
    var heightFactor = constraints.size.height/819;
    var widthFactor = constraints.size.width/411;
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 150*heightFactor,
        width: 180*widthFactor,
        child: Column(
          children: [
           Image.asset(
               'assets/$asset',
             height: 100*heightFactor,
             width: 200*widthFactor,
           ),
            SizedBox(height: 10.0*heightFactor),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 25.0*widthFactor),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15*heightFactor,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:20.0*widthFactor),
                      child: Row(children: [
                      Icon(Icons.location_on_outlined,
                        size: 15*heightFactor,
                      ),
                        Text('$distance km from you',
                          style: TextStyle(
                            fontSize: 12*heightFactor,
                          ),

                        ),
                      ],
                      ),
                    ),

                  ],
                ),
                SizedBox(width: 12*widthFactor,),
                Container(
                  height: 25*heightFactor,
                  width: 40*widthFactor,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0*widthFactor),
                      color: Colors.black87
                  ),
                  child: Center(
                    child: Text('$rate/hr',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10*heightFactor,
                        fontFamily: 'PoppinsSemiBold'
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
