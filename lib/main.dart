import 'package:bloc_pattern/app_blocs.dart';
import 'package:bloc_pattern/home/signin_screen.dart';
import 'package:bloc_pattern/splash/bloc/splash_blocs.dart';
import 'package:bloc_pattern/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_state.dart';


void main() {
  runApp(
      BlocProvider(
          create: (context) => AppBlocs(InitialAppState()),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: ScreenUtilInit(
        builder:(context,child)=>  MaterialApp(
          debugShowCheckedModeBanner: false,

          home:  const SplashScreen(),
          routes: {
            "SignIn":(context)=> SignInScreen()
          },

        ),
      ),
    );
  }
}

