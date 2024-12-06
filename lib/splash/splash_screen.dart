import 'package:bloc_pattern/splash/bloc/splash_events.dart';
import 'package:bloc_pattern/splash/bloc/splash_states.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/signup_screen.dart';
import 'bloc/splash_blocs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController pageController=PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: BlocBuilder<SplashBloc,SplashState>(
        builder: (context,state){
          return SizedBox(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index){
                    BlocProvider.of<SplashBloc>(context).add(PageChanged(index));
                  },
                  children: [
                    _page(
                        pageController,
                        1,
                        "First See Learning",
                        "Forget about a for of paper all Knowlage in one learing",
                        "Next",
                        "assets/images/reading.png",
                      context


                    ),
                    _page(
                        pageController,
                        2,
                        "Connect With Everyone",
                        "Always keep in touch with your tutor & friends.let's get connected",
                        "Next",
                        "assets/images/boy.png",
                        context
                    ),
                    _page(
                        pageController,
                        3,
                        "Get Started",
                        "Let's Started",
                        "Started",
                        "assets/images/man.png",
                        context
                    ),

                  ],
                ),
                Positioned(
                    bottom: 80.h,
                    child: DotsIndicator(
                      position: state.page,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: Colors.blue,
                          size: Size.square(8),
                          activeSize: Size(10,8),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                    ))
              ],
            ),

          );
        },
      ),
    );
  }
}
Widget _page( PageController pageController,int index,String title,String subTitle,String bottomName ,String imagePath,BuildContext context){

  return  Column(
    children: [
      SizedBox(height: 345.h,width: 345.w,
        child: Image.asset(imagePath,
          fit: BoxFit.cover,

        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Text(
         title,
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24.sp,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      Container(
        width: 375.w,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      SizedBox(height: 100.h,),
      GestureDetector(
        onTap: (){
          if (index<3){
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 500),
                 curve:Curves.decelerate);

          }else{
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));

          }
        },
        child: Container(
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24.r)
          ),
          child: Center(
            child: Text(
              bottomName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white.withOpacity(.5),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.normal
              ),

            ),
          ),
        ),
      )
    ],
  );
}