import 'package:flutter/material.dart';

class DogWalker extends StatelessWidget {
  DogWalker({this.rate, this.name, this.distance, this.asset, this.onPressed});
  final String asset, name, rate;
  final int distance;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 150,
        width: 180,
        child: Column(
          children: [
           Image.asset(
               'assets/$asset',
             height: 100,
             width: 200,
           ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Row(children: [
                      Icon(Icons.location_on_outlined,
                        size: 15,
                      ),
                        Text('$distance km from you',
                          style: TextStyle(
                            fontSize: 12,
                          ),

                        ),
                      ],
                      ),
                    ),

                  ],
                ),
                SizedBox(width: 12,),
                Container(
                  height: 25,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.black87
                  ),
                  child: Center(
                    child: Text('$rate/hr',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
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
