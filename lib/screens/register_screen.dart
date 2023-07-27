import 'package:flutter/material.dart';
import 'package:food_app/commponents/custom_button.dart';
import 'package:food_app/commponents/logo.dart';
import 'package:food_app/commponents/background_pattern.dart';
import 'package:food_app/commponents/input_box.dart';
import 'package:food_app/screens/congrats_screen.dart';
import 'package:food_app/utitlity/variables.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  final bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: BackgroundPattern(
          winSize: winSize,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Logo(),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Sign Up For Free',
                style: TextStyle(
                  color: AppColor.Black,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColor.White,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColor.Light,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.Light,
                      offset: const Offset(2, 3),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    Image(
                      width: 40,
                      image: AssetImage('assets/images/Profile.png'),
                    ),
                    Expanded(
                      child: InputBox(
                        placeholder: 'Username',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColor.White,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColor.Light,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.Light,
                      offset: const Offset(2, 3),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    Image(
                      width: 40,
                      image: AssetImage('assets/images/Message.png'),
                    ),
                    Expanded(
                      child: InputBox(
                        placeholder: 'Email',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: AppColor.White,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColor.Light,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.Light,
                        offset: const Offset(2, 3),
                        blurRadius: 10,
                      )
                    ]),
                child: const Row(
                  children: [
                    Image(
                      width: 40,
                      image: AssetImage('assets/images/Lock.png'),
                    ),
                    Expanded(
                      child: InputBox(
                        placeholder: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: rememberMe,
                      onChanged: (bool? rememberMe) {},
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return AppColor.Grey.withOpacity(.5);
                        }
                        return AppColor.Primary;
                      }),
                      checkColor: AppColor.White,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Text(
                    'Keep Me Signed In',
                    style: TextStyle(
                      color: AppColor.Grey,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: rememberMe,
                      onChanged: (bool? rememberMe) {},
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return AppColor.Grey.withOpacity(.5);
                        }
                        return AppColor.Primary;
                      }),
                      checkColor: AppColor.White,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Text(
                    'Email Me About Special Pricing',
                    style: TextStyle(
                      color: AppColor.Grey,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const CongratScreen()),
                  );
                },
                child: const CustomButton(
                  title: 'Create Account',
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'already have an account?',
                style: TextStyle(
                  color: AppColor.Primary,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
