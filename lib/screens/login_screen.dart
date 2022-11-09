import 'package:flutter/material.dart';
import 'package:login/screens/form_view.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 70, 217, 190),
        padding: EdgeInsets.only(top: 50),
        child: FormView(),
      ),
    );
  }
}
