import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';
import '../utility/user_accounts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var login = Login();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: login,
    );
  }
}
