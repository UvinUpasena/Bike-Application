
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newbikeapp/reusable_widgets/resuable_widget.dart';
import 'package:newbikeapp/screens/home_screen.dart';

import 'package:newbikeapp/screens/sign_up.dart';
import 'package:newbikeapp/utils/color_utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  SignInState createState() => SignInState();
}
class SignInState extends State<SignIn>{
TextEditingController _passwordTextController = TextEditingController();
TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration:BoxDecoration(
          gradient: LinearGradient(
            colors: [

              hexStringToColor("32CB93"),
              hexStringToColor("46954C"),
              hexStringToColor("615EF4")
              
            ], begin: Alignment.topCenter, end:Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2,20,0),
                 child: Column(
                  children:<Widget>[
                    logoWidget("assets/images/bicycle_thumbnail.png"),
                    SizedBox(
                      height:30,
                      ),
                    reusableTextField("Enter Username", Icons.person_outline, false,_emailTextController), //calling username text box
                    SizedBox(
                      height:20,
                      ),
                    reusableTextField("Enter Password", Icons.lock_outline, true,_passwordTextController), //calling password text box
                    SizedBox(
                      height:20,
                      ),
                     /* 
                    signInSignUpButton(context, true, () {}),
                    SizedBox(
                      height:20,
                      ),
                      */
                    signInSignUpButton(context, true, (){
                      /*
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailTextController.text, 
                        password: _passwordTextController.text).then((value) {
                             Navigator.push(context, 
                             MaterialPageRoute(builder: (context) => HomeScreen()));
                        } ).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                       */
                       
                        Navigator.push(context, 
                             MaterialPageRoute(builder: (context) => HomeScreen()));
                        
                    }),
                    signUpOption(context)
                  ],
                ) 
               ),
              ),
             ),
            );
  }

}

Row signUpOption(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? ",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>  SignUp()));
          }, 
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }