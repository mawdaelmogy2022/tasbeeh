import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/src/core/block/block_observer.dart';
import 'package:project/src/feature/home/presentation/view/cubit/Home_cubit/home_cubit.dart';
import 'package:project/src/feature/home/presentation/view/screen/home_view.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            HomeView.id: (context) => const HomeView(),
          },
          initialRoute: HomeView.id,
        ));
    
  }
}
