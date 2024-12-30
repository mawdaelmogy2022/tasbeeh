import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,required this.childWidget});
  final Widget? childWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child:childWidget
    );
  }
}
