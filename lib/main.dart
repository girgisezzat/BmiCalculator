import 'package:bloc/bloc.dart';
import 'package:bmi_app/shared/bloc_observer.dart';
import 'package:bmi_app/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'layout/news_app/cubit/cubit.dart';
import 'layout/news_app/news_layout.dart';
import 'layout/todo_app/cubit/cubit.dart';
import 'layout/todo_app/cubit/states.dart';
import 'layout/todo_app/todo_layout.dart';
import 'package:bloc/bloc.dart';

import 'modules/bmi_app/bmi_screen/BMIScreen.dart';

void main() {

  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(
          create: (BuildContext context) =>AppCubit()..createDatabase(),
        )
      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        home: BmiScreen(),
      ),
    );
  }
}


