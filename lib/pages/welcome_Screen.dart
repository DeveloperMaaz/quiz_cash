import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_cash/pages/alert_dialog_1.dart';
import 'package:quiz_cash/pages/language_selection.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool changeValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/Rectangle.png",
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Center(
                  child: SizedBox(
                    child: Image.asset(
                      "assets/images/welcomePic.png",
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Choose your login method \n Earn QuizCash",
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LanguageSelection(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey, width: 1.5.w),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 26.w),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google.png"),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Continue with Google",
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const NextAlertDialog();
                        });
                  },
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25).r,
                      border: Border.all(color: Colors.grey, width: 1.5.w),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 26.w),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/facebook.png"),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Continue with Facebook",
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: changeValue, onChanged: (value) {
                      setState((){
                        changeValue=value!;
                      });
                    }),

                    Text(
                      "I have read and agree to",
                      style: TextStyle(
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Terms & Condition",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3989d5),
                      ),
                    ),
                    Text(
                      "Privacy & Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3989d5),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
