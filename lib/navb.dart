import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/news.dart';

class navb extends StatelessWidget {
  const navb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Benjachok 108'),
            accountEmail: Text('--------'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/monkey.jpg')),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage('images/monkey2.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp())),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('News'),
           onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => DNewsPage())),
          )
        ],
      ),
    );
  }
}
