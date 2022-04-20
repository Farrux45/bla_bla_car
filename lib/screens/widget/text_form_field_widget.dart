import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  const MyFormField({
    Key? key,
    required  controller,
  }) : _controller = controller, super(key: key);

  final _controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      key: _controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: "+7 *** *** ** **"),
    );
  }
}
