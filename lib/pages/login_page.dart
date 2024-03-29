import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidden = true;

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
          margin: EdgeInsets.only(top: 240),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
                        ListTile(
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/image1.jpg'),
                          ),
                          title: Text('Lionel Messi'),
                          subtitle: Text('goat@gmail.com'),
                        ),
                        Gap(20),

                        //Password

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextFormField(
                            obscureText: hidden,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: hidden
                                    ? Icon(
                                        Icons.visibility_off,
                                        color: Color(0xff02c38e),
                                      )
                                    : Icon(
                                        Icons.visibility,
                                        color: Color(0xff02c38e),
                                      ),
                                onPressed: () {
                                  setState(() {
                                    hidden = !hidden;
                                  });
                                },
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Gap(20),
                        Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xff02c38e),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Continue',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Gap(30),
                        Text(
                          'Forgot your Password?',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
