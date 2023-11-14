import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';
import 'package:ocdear/components/google_button.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/screen/login_screens/login_screen.dart';
import 'package:ocdear/screen/questions_screens/questions.dart';

import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MainLogo(),
              const Text("! هيا نبدأ",
                  textAlign: TextAlign.end, style: AppTextStyle.textStyle20),
              const SizedBox(height: 14),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Text("اهلا بيك في تطبيقنا ",
                        textAlign: TextAlign.start,
                        style: AppTextStyle.textStyle14),
                    Text(
                      "OCDEAR",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.normalActive),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        text: "الاسم الاول",
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: CustomTextField(
                        text: "الاسم الاخير",
                      ),
                    ),
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CustomTextField(
                  text: "رقم الهاتف او الايميل",
                ),
              ),
              CustomTextField(
                text: "كلمة المرور",
                icon: Icons.remove_red_eye,
              ),
              const SizedBox(height: 60),
              MainButton(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Questions()));
                },
                text: "إنشاء حساب",
                buttonColor: AppColors.normalActive,
                textColor: Colors.white,
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "او",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.greyColor),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const ButtonWithGoogle(),
              const SizedBox(height: 20),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "لديك حساب بالفعل؟ ",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      },
                      child: const Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.normalActive,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
