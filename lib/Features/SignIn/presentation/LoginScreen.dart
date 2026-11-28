import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:synera_graduation_project/Custome_Widgets/TextFieldWidget.dart';

import '../../../Custome_Widgets/ButtonWidget.dart';
import '../../../core/Theme/AppColors/AppColors.dart';
import '../../../core/gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool ishidden = false;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;


    return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              Assets.images.glassSlab.path,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.30,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                            Assets.images.brandHeaderDiagonal.path),
                            fit: BoxFit.cover)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 39),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 8,
                            children: [

                              Assets.images.logoMark.image(width: 46,
                                  height: 51),
                              Assets.images.wordmarkYNERA.image(width: 192,
                                  height: 28)

                            ],
                          ),

                          Expanded(
                            child: Center(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.centerRight,
                                              end: Alignment.centerLeft,
                                              colors: [
                                                AppColors.lightblue,
                                                Colors.transparent,


                                              ])

                                      ),
                                    ),
                                  ),

                                  Expanded(
                                      flex: 3,
                                      child:
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            spacing: 5,
                                            children: [
                                              Text(
                                                "Collective Intelligence.",
                                                style: theme.titleSmall
                                                    ?.copyWith(
                                                    color: AppColors.lightgrey,
                                                    fontFamily: "Poppins",
                                                    fontSize: 12),
                                                textAlign: TextAlign.start,
                                              ),

                                              Text(
                                                "Individualized Finance.",
                                                style: theme.titleSmall
                                                    ?.copyWith(
                                                    color: AppColors.lightgrey,
                                                    fontFamily: "Poppins",
                                                    fontSize: 12),
                                                textAlign: TextAlign.start,
                                              ),


                                            ],
                                          ),
                                        ),
                                      )
                                  ),

                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              end: Alignment.centerRight,
                                              begin: Alignment.centerLeft,
                                              colors: [
                                                AppColors.lightblue,
                                                Colors.transparent,


                                              ])

                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          )


                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Welcome back",
                                style: theme.titleLarge?.copyWith(
                                    color: AppColors.white))),
                        SizedBox(height: 8,),
                        Container(
                          height: 3,
                          width: 44,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [

                                    AppColors.white,
                                    AppColors.lightblue,


                                  ])
                          ),
                        ),
                        SizedBox(height: 16,),
                        Text(
                          "Log in to see your financial health and the loans that fit you.",
                          style: theme.titleSmall?.copyWith(
                              color: AppColors.grey),),

                        SizedBox(height: 20,),
                        Text("Email", style: theme.titleMedium?.copyWith(
                            color: AppColors.lightgrey),),
                        SizedBox(height: 16,),
                        TextFieldWidget(title: "your.email@example.com",
                            prefixicon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Assets.icons.email.svg(
                                  width: 18, height: 18),
                            ),
                            controller: emailcontroller,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter your email";
                              }
                              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value)) {
                                return "please enter a valid email";
                              }
                              return null;
                            }),
                        SizedBox(height: 20,),
                        Text("Password", style: theme.titleMedium?.copyWith(
                            color: AppColors.lightgrey),),
                        SizedBox(height: 16,),
                        TextFieldWidget(
                            controller: passwordcontroller,
                            title: "Enter your password",
                            obscureText: ishidden,
                            suffixicon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ishidden = !ishidden;
                                  });
                                },
                                child: Icon(ishidden ? Icons
                                    .visibility_off_outlined : Icons
                                    .visibility_outlined, color: AppColors
                                    .lightblue)),
                            prefixicon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Assets.icons.lock.svg(
                                  width: 18, height: 18),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter your password";
                              }
                              if (value.length < 8) {
                                return "password must be at least 8 characters";
                              }
                              if (!RegExp(
                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                  .hasMatch(value)) {
                                return "password must contain at least one uppercase letter, one lowercase letter, one number, and one special character";
                              }
                            }),

                        SizedBox(height: 20,),
                        GestureDetector(
                            onTap: () {


                            },
                            child: ButtonWidget(
                                title: "Log in", height: 52, islogin: true)),

                        SizedBox(height: 20,),


                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft,
                                        colors: [
                                          AppColors.lightblue,
                                          Colors.transparent,


                                        ])

                                ),
                              ),
                            ),

                            Expanded(
                                flex: 2,
                                child:
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      spacing: 5,
                                      children: [
                                        Text(
                                          "or continue with",
                                          style: theme.titleSmall?.copyWith(
                                              color: AppColors.lightgrey,
                                              fontFamily: "Poppins",
                                              fontSize: 12),
                                          textAlign: TextAlign.start,
                                        ),

                                      ],
                                    ),
                                  ),
                                )
                            ),


                            Expanded(
                              child: Container(
                                height: 1,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        end: Alignment.centerRight,
                                        begin: Alignment.centerLeft,
                                        colors: [
                                          AppColors.lightblue,
                                          Colors.transparent,


                                        ])

                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 12,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 15,
                                    sigmaY: 15,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.glass,
                                        borderRadius: BorderRadius.circular(24),
                                        border: Border.all(
                                            color: AppColors.white, width: 1)

                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(13),
                                        child: GestureDetector(
                                          onTap: () {


                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            spacing: 10,
                                            children: [
                                              Assets.icons.gogle.svg(
                                                  width: 17, height: 17),
                                              Text("Google",
                                                  style: theme.titleMedium
                                                      ?.copyWith(
                                                      color: AppColors.white,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight
                                                          .w500))


                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                  ),


                                ),


                              ),
                            ),


                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 15,
                                    sigmaY: 15,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.glass,
                                        borderRadius: BorderRadius.circular(24),
                                        border: Border.all(
                                            color: AppColors.white, width: 1)

                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(13),
                                        child: GestureDetector(
                                          onTap: () {


                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            spacing: 10,
                                            children: [
                                              Assets.icons.apple.svg(
                                                  width: 19, height: 19),
                                              Text("Apple",
                                                  style: theme.titleMedium
                                                      ?.copyWith(
                                                      color: AppColors.white,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight
                                                          .w500))


                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                  ),


                                ),


                              ),
                            ),
                          ],
                        )


                      ],

                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
