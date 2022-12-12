import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  void Function({String? username, String? password}) checkLogin;

  Login({required this.checkLogin});

  var _userNameController = TextEditingController();
  var _passwordController = TextEditingController();

  String getUserName() {
    return _userNameController.text;
  }

  String getPassword() {
    return _passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 70, 217, 190),
        padding: EdgeInsets.only(top: 50),
        child: Container(
          margin: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // username form
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Username'),
                  TextField(
                    controller: _userNameController,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // password form
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password'),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () => checkLogin(
                  username: _userNameController.text,
                  password: _passwordController.text,
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
