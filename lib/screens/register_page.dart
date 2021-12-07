import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_task/common_widgets/custom_button.dart';
import 'package:interview_task/screens/home_page/home_page.dart';
import 'package:interview_task/screens/onboarding_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();
  //text field state
  String fullName = '';
  String email = '';
  String password = '';
  bool _isObscure = true;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context);

    var heightFactor = constraints.size.height/819;
    var widthFactor = constraints.size.width/411;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      body:
          Container(
            child: ListView(

              children: [
                Container(
                  padding: EdgeInsets.only(left: 36*widthFactor),
                  child: Text(
                    'Let\'s Start Here',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 34*heightFactor,
                    ),
                  ),
                ),
                SizedBox(height: 10*heightFactor,),
                Container(
                  padding: EdgeInsets.only(left: 36*widthFactor),
                  child: Text(
                    'Fill in your details to begin',
                    style: TextStyle(
                      fontFamily: 'PoppinsSemiBold',
                      fontSize: 17*heightFactor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 48*heightFactor,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                   children: [
                     SizedBox(
                       width: 343*widthFactor,
                       height: 60*heightFactor,
                       child: TextFormField(
                         onChanged: (val) {
                           setState(() {
                             fullName = val;
                           });
                         },
                         validator: (val) => val.isEmpty ? 'Enter your fullname' : null,
                         textInputAction: TextInputAction.next,
                         decoration: InputDecoration(
                             labelText: 'FullName',
                             labelStyle: TextStyle(
                               color: Colors.black54,
                         ),
                       ),
                     ),
                     ),
                     SizedBox(
                       height: 22*heightFactor,
                     ),
                     SizedBox(
                       width: 343*widthFactor,
                       height: 60*heightFactor,
                       child: TextFormField(
                         onChanged: (val) {
                           setState(() {
                             email = val;
                           });
                         },
                         validator: (val) => val.isEmpty ? 'Enter your e-mail address' : null,
                         textInputAction: TextInputAction.next,
                         decoration: InputDecoration(
                           labelText: 'E-mail',
                           labelStyle: TextStyle(
                             color: Colors.black54,
                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 22*heightFactor,
                     ),
                     SizedBox(
                       width: 343*widthFactor,
                       height: 60*heightFactor,
                       child: TextFormField(
                         onChanged: (val) {
                           setState(() {
                             password = val;
                           });
                         },
                         validator: (val) => val.length < 3 ? 'Enter at least 3 characters' : null,
                         textInputAction: TextInputAction.next,
                         obscureText: _isObscure,
                         decoration: InputDecoration(
                           labelText: 'Password',
                           labelStyle: TextStyle(
                             color: Colors.black54,
                           ),
                           suffixIcon: IconButton(
                             icon: Icon(
                                 _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                               color: Colors.black54,
                             ),
                             onPressed: () {
                               setState(() {
                                 _isObscure =!_isObscure;
                               });
                             },
                           )
                         ),

                       ),
                     ),
                   ],
                  ),
                ),
                SizedBox(height: 22*heightFactor,),
                Padding(
                  padding:  EdgeInsets.only(left: 35.0*widthFactor, right: 35.0*widthFactor),
                  child: CustomButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()){
                      Navigator.pushNamed(context, '/homepage');}
                    },
                    borderRadius: 12.0*widthFactor,
                    height: 55*heightFactor,
                    width: 324*widthFactor,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17*heightFactor,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 196*heightFactor,),
                Padding(
                  padding:  EdgeInsets.only(left: 68.0*widthFactor, right: 28.0*widthFactor),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                              'By signing in, you agree with our',
                            style: TextStyle(
                              fontFamily: 'PoppinsLight',
                              fontSize: 13*heightFactor
                            ),
                          ),
                          SizedBox(width: 5*widthFactor,),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Terms of Service',
                              style: TextStyle(
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 13*heightFactor
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 98.0*widthFactor),
                        child: Row(
                          children: [
                            Text(
                              'and',
                              style: TextStyle(
                                  fontFamily: 'PoppinsLight',
                                  fontSize: 13*heightFactor
                              ),
                            ),
                            SizedBox(width: 5*widthFactor,),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    fontFamily: 'PoppinsSemiBold',
                                    fontSize: 13*heightFactor
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
                
              ],
            ),
          ),


    );

  }
}
