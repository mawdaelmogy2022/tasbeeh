import 'package:flutter/material.dart';

class CustomDrawerComponent extends StatelessWidget {
  const CustomDrawerComponent({super.key,required this.text,required this.action});
  final String text;
  final void Function()? action;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.purple, width: 2),
            borderRadius: BorderRadius.circular(16)),
        child:  Center(
            child: Text(
              text,
          style: const TextStyle(fontSize: 32),
        )),
      ),
    );
  }
}
