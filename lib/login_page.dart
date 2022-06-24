import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:google_login/login_controller.dart';
import 'package:google_login/register.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff154c79),
        //appBar: AppBar(
        //title: Text('LoginPage'),
        //  ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo.png',
                    //fit: BoxFit.cover,
                    height: 240,
                    width: 240,
                  ),
                ),
                const SizedBox(
                  height: 2,
                  width: 2,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome to SAMAN",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        "Select any Sign in option",
                        style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                  width: 25,
                ),
                Container(
                  width: 230,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.phone_android_sharp),
                    label: Text(
                      "Sign in with Phone Number",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(height: 20, width: 20),
                Container(
                  width: 230,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.email_sharp,
                    ),
                    label: Text(
                      "Sign in with your Email",
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  width: 230,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                    ),
                    label: Text(
                      "Sign in with Facebook",
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Obx(() {
                    if (controller.googleAccount.value == null)
                      return buildLoginButton();
                    else
                      return buildProfileView();
                  }),
                ),
                const SizedBox(
                  height: 15,
                  width: 15,
                ),

                RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        children: [
                      TextSpan(
                        text: " Create",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => RegisterScreen()),
                      ),
                    ]))

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   // ignore: prefer_const_literals_to_create_immutables
                //   children: const [
                //     const Text(
                //       "Don't have an account?",
                //       style: TextStyle(fontSize: 15, color: Colors.white),
                //     ),

                //       InkWell(
                //        onTap: (){
                //          Get.to(const RegisterScreen());
                //        },
                //        child: Text(" Register",
                //            style: TextStyle(
                //              fontSize: 15,
                //              color: Colors.blue,
                //            )),
                //    ),
                //   ],
                // ),
              ],
            ),
          ),
        )));
  }

  Column buildProfileView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundImage: Image.network('src').image,
          radius: 100,
        ),
        Text("Name"),
        Text("Email"),
      ],
    );
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
        GoogleSignIn().signIn();
      },
      icon: Image.asset(
        'assets/images/login.png',
        height: 35,
        width: 40,
      ),
      label: Text('Sign In with Google', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
