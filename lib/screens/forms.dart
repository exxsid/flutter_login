import 'package:flutter/material.dart';

class Forms extends StatelessWidget {
  var formText;

  Forms({
    super.key, this.formText
  });

  final controller = TextEditingController();

  String getValue() {
    return controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(formText),
          TextField(
            controller: this.controller,
          ),
        ],
      ),
    );
  }
}
