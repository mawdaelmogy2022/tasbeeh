import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/src/feature/home/presentation/view/cubit/Home_cubit/home_cubit.dart';
import 'package:project/src/feature/home/presentation/view/cubit/Home_cubit/home_state.dart';
import 'package:project/src/feature/home/presentation/view/widget/customChangeColor.dart';
import 'package:project/src/feature/home/presentation/view/widget/custom_container.dart';
import 'package:project/src/feature/home/presentation/view/widget/custom_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = 'HOMEVIEW';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = BlocProvider.of(context);
        return Scaffold(
            drawer: const CustomDrawer(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                        borderRadius: BorderRadius.circular(22)),
                    child: Center(
                      child: Text(
                        cubit.text,
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 72,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: cubit.color,
                      child: Text(
                        cubit.count.toString(),
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CustomContainer(
                          childWidget: IconButton(
                              onPressed: () {
                                cubit.increse();
                              },
                              icon: const Icon(Icons.add))),
                      const Spacer(),
                      CustomContainer(
                          childWidget: IconButton(
                              onPressed: () {
                                cubit.reset();
                              },
                              icon: const Icon(Icons.restart_alt_outlined))),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Customchangecolor(
                          action: () {
                            cubit.changColorred();
                          },
                          color: Colors.red),
                      Customchangecolor(
                          action: () {
                            cubit.changColorgreen();
                          },
                          color: Colors.green),
                      Customchangecolor(
                          action: () {
                            cubit.changColoryellow();
                          },
                          color: Colors.yellow),
                      Customchangecolor(
                          action: () {
                            cubit.changColorblue();
                          },
                          color: Colors.blue),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ));
      },
    );
  }
}
