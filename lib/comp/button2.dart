import 'package:flutter/material.dart';

class button2 extends StatelessWidget {
  final Function()? onTap;
  const button2({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            "Log In Now",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
