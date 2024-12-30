import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/src/feature/home/presentation/view/cubit/Home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitaState());
  String text = 'سبحان الله';
  int count = 1;
  Color color = Colors.white;
  void increse() {
    count++;
    emit(UpdateState());
  }

  void reset() {
    count = 0;
    emit(UpdateState());
  }

  void changColorred() {
    color = Colors.red;
    emit(UpdateState());
  }

  void changColorgreen() {
    color = Colors.green;
    emit(UpdateState());
  }

  void changColoryellow() {
    color = Colors.yellow;
    emit(UpdateState());
  }

  void changColorblue() {
    color = Colors.blue;
    emit(UpdateState());
  }
  void changtext1() {
    text='لا حول ولا قوة الا بالله';
    emit(UpdateState());
  }
   void changtext2() {
    text='الحمد لله';
    emit(UpdateState());
  }
   void changtext3() {
    text='الله اكبر';
    emit(UpdateState());
  }
   void changtext4(){
    text='لا اله الا الله';
    emit(UpdateState());
  }
  
}
