import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_project/pages/home_page.dart';

class LoginPageWithValidation extends StatefulWidget {
  const LoginPageWithValidation({super.key});

  @override
  State<LoginPageWithValidation> createState() =>
      _LoginPageWithValidationState();
}

class _LoginPageWithValidationState extends State<LoginPageWithValidation> {
  bool hidden = true;

  static Pattern pattern =
      "^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+[a-zA-Z]";

  RegExp regExp = RegExp(pattern.toString());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void loginValidator() {
    if (email.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email is required!'),
        ),
      );
    } else if (!regExp.hasMatch(email.text.trim())) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid Email Address!'),
        ),
      );
    } else if (password.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password is required!'),
        ),
      );
    } else if (password.text.trim().length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password must be at least 8 characters long!'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Logged in successfully!')));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rudrabhai.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 14, right: 14, top: 20),
          margin: EdgeInsets.only(top: 280),
          width: double.infinity,
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/image1.jpg'),
                        ),
                        Text(
                          'LogIn',
                          style: TextStyle(fontSize: 32),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(30),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: email,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Email',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Gap(20),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: password,
                    obscureText: hidden,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: IconButton(
                        icon: hidden
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              )
                            : Icon(
                                Icons.visibility,
                                color: Colors.black,
                              ),
                        onPressed: () {
                          setState(() {
                            hidden = !hidden;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Gap(40),
                GestureDetector(
                  onTap: () {
                    loginValidator();
                  },
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Gap(30),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account?  ',
                    children: [
                      TextSpan(
                        text: 'Signup',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
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
