import 'package:bloc_pattern/app_blocs.dart';
import 'package:bloc_pattern/sign_in/signin_screen.dart';
import 'package:bloc_pattern/splash/bloc/splash_blocs.dart';
import 'package:bloc_pattern/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app_state.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

   await Firebase.initializeApp();


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

