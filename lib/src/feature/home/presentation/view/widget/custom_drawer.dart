import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/src/feature/home/presentation/view/cubit/Home_cubit/home_cubit.dart';
import 'package:project/src/feature/home/presentation/view/widget/custom_drawer_component.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
      HomeCubit cubit = BlocProvider.of(context);
    return Drawer(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  image:const DecorationImage(image: AssetImage('assets/images/WhatsApp Image 2024-12-30 at 11.00.15 AM.jpeg'),fit: BoxFit.fill),
                ),),
             const   SizedBox(height: 15,),
                  CustomDrawerComponent(
                      text: "لا حول ولا قوة الا بالله",
                      action: () {
                        cubit.changtext1();
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomDrawerComponent(
                      text: "الحمد لله",
                      action: () {
                        cubit.changtext2();
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomDrawerComponent(
                      text: "الله اكبر",
                      action: () {
                        cubit.changtext3();
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomDrawerComponent(
                      text: " لا اله الا الله",
                      action: () {
                        cubit.changtext4();
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ) ;
  }
}