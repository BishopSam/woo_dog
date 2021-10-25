import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  CustomButton({
    this.height,
    this.width,
    this.child,
    this.borderRadius,
    this.onPressed,
});

  final double height;
  final double width;
  final Widget child;
  final double borderRadius;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Color(0xffFE904B),
                  Colors.orange[400],
                ]
            )
        ),
        child: ElevatedButton(onPressed: onPressed,

          child: child,
          style: ElevatedButton.styleFrom(
            // minimumSize: Size(width, height),
              primary: Colors.transparent,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)
              ),

          ),
        ),
      ),
    );
  }
}

