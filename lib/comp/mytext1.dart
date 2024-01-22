import 'package:flutter/material.dart';

class mytext1 extends StatelessWidget {
  //final controller;
  //final String hintText;
  //final bool obscureText;
  const mytext1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        //controller: controller,
        //obscureText: obscureText,
        decoration: const InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.grey,
          filled: true,
          //hintText: hintText,
        ),
      ),
    );
  }
}
