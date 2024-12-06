import 'package:bloc_pattern/home/widgets/signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({super.key});
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Log In"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              socialIcon(),
              SizedBox(height: 20.h,),
              const Center(
                child: Text("or use your email account to login",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.grey,

                ),
                ),
              ),
              SizedBox(height: 40.h,),
              const Text("Email",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.black,

                ),

              ),
              SizedBox(height: 10.h,),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/icons/user.png"),
                  hintText: "Enter your email",
                    hintStyle: const TextStyle(
                        color: Colors.grey
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(.6),
                      width: .2
                    )
                  )
                ),
              ),
              SizedBox(height: 20.h,),
              const Text("password",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.h,),
              TextField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/icons/lock.png"),
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
                      color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(.6),
                            width: .2
                        )
                    )
                ),
              ),
              SizedBox(height: 10.h,),
              Text("Forget Password ??",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
              ),
              ),
              SizedBox(height: 20.h,),
              signInBottom("Log In",false),
              SizedBox(height: 20.h,),
              signInBottom("Register",true),




            ],
          ),
        ),
      ),

    );

  }
}
