import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Text(name, style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700

          ),
        ),
      ),
    );
  }
}