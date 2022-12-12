import 'package:flutter/material.dart';
import 'package:login/screens/lading_screen.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/utility/user_accounts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var accounts = [
    {
      "username": 'leocortez',
      'password': 'ikawlang',
    },
    {
      "username": 'exxsid',
      'password': 'qwerty',
    },
    {
      "username": 'gambi',
      'password': 'lucid',
    },
  ];

  var isLogin = false;

  void checkCredentials({String? username, String? password}) {
    setState(() {
      for (var account in accounts) {
      if (account['username'] == username && account['password'] == password) {
        isLogin = true;
      }
      print("log");
    }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLogin
          ? Landing()
          : Login(
              checkLogin: checkCredentials,
            ),
    );
  }
}
