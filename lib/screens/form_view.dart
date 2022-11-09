import 'package:flutter/material.dart';
import 'package:login/screens/forms.dart';

class FormView extends StatelessWidget {
  FormView({super.key});

  var usernameForm = Forms(formText: 'Username');
  var passwordForm = Forms(formText: 'Password');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            'LISTAHAN',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          usernameForm,
          SizedBox(
            height: 15,
          ),
          passwordForm,
          SizedBox(
            height: 30,
          ),
          // TODO
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(usernameForm.getValue()),
                  );
                },
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
