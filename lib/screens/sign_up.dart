
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newbikeapp/reusable_widgets/resuable_widget.dart';

import 'package:newbikeapp/screens/home_screen.dart';
import 'package:newbikeapp/utils/color_utils.dart';
//import 'package:google_sign_in/google_sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key ? key}) : super(key:key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
TextEditingController _passwordTextController = TextEditingController();
TextEditingController _emailTextController = TextEditingController();
TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize:24, fontWeight: FontWeight.bold ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
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
                     children:<Widget> [
                        const SizedBox(
                          height: 20,
                        ),
                        reusableTextField("Enter UserName", Icons.person_outline, false,_userNameTextController),
                        const SizedBox(
                          height: 20,
                        ),
                        reusableTextField("Enter Email Id", Icons.person_outline, false,_emailTextController),
                        const SizedBox(
                          height: 20,
                        ),
                        reusableTextField("Enter Password", Icons.lock_outline, true,_passwordTextController),
                        const SizedBox(
                          height: 20,
                        ),
                        
                        signInSignUpButton(context, false, (){
                          /*
                          FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text).then((value){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => HomeScreen()));
                           }).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                           });
                           */
                          
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                          
                        })
                  ],
                  
          ),
        ))),
    );
  }


}





