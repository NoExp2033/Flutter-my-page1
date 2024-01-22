import 'package:flutter/material.dart';
import 'package:flutter_application_1/comp/button.dart';
import 'package:flutter_application_1/comp/button2.dart';
import 'package:flutter_application_1/comp/mytext1.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/navb.dart';
import 'package:flutter_application_1/news.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});

//text controller

//sign user in
  final usernameCon = TextEditingController();
  final passwordCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: const Color.fromRGBO(50, 205, 50, 100),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Log In Page'),
        ),
        drawer: navb(),
        backgroundColor: Colors.white10,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),

                SizedBox(
                  height: 50,
                ),
                //welcome text
                Text('Welcome to Login Page',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),

                SizedBox(
                  height: 50,
                ),

                //user
                mytext1(
                    //controller: usernameCon,
                    // hintText: 'Username',
                    //obscureText: false,
                    ),

                const SizedBox(height: 10),

                //pass
                mytext1(
                    //controller: passwordCon,
                    // hintText: 'Password',
                    //obscureText: true,
                    ),

                //forgot
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'forgot password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                //sign in

                button2(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DNewsPage()))),
              ],
            ),
          ),
        ));
  }
}
