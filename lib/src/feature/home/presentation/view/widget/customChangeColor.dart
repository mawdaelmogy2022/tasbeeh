import 'package:flutter/material.dart';

class Customchangecolor extends StatelessWidget {
  const Customchangecolor({super.key,required this.action ,required this.color});
  final void Function()? action;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
                        onTap:action ,
                        child:  CircleAvatar(
                          radius: 35,
                          backgroundColor: color,
                        ),
                      );
  }
}