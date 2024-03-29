import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rudrabhai.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 160),
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Gap(20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 28,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(.7),
                        Colors.black.withOpacity(.9),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //We will change icons later

                      Container(
                        width: double.infinity,
                        height: 60,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),

                      //Sizedbox work only if we give height or width as if it is in row or column
                      //So we will use Gap for auto

                      Gap(20),

                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xff02c38e),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                      Gap(10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Or',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Gap(10),

                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffe5f9f2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Color(0xff02c38e),
                            ),
                            title: Text(
                              'Signup with Facebook',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),

                      Gap(20),

                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffe5f9f2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.google,
                              color: Color(0xff02c38e),
                            ),
                            title: Text(
                              'Signup with Google',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),

                      Gap(20),

                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffe5f9f2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.apple,
                              color: Color(0xff02c38e),
                            ),
                            title: Text(
                              'Signup with Apple',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),

                      Gap(30),

                      RichText(
                        text: TextSpan(
                            text: 'Already have an account?  ',
                            children: [
                              TextSpan(
                                text: 'Log In',
                                style: TextStyle(
                                  color: Color(0xff02c38e),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ]),
                      ),

                      Gap(10),

                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
