import 'package:flutter/material.dart';
import 'package:food_app/commponents/custom_button.dart';
import 'package:food_app/commponents/logo.dart';
import 'package:food_app/utitlity/variables.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: winSize.width,
        height: winSize.height,
        padding: const EdgeInsets.all(DefaultPadding),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Login To Your Account',
              style: TextStyle(
                color: AppColor.Black,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
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
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
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
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'or Continue With',
              style: TextStyle(
                color: AppColor.Black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:const  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColor.White,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.Light,
                          offset: const Offset(2, 5),
                          blurRadius: 15,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/facebook.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            color: AppColor.Black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColor.White,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.Light,
                          offset: const Offset(2, 5),
                          blurRadius: 15,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/google.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            color: AppColor.Black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Forgot Your Password?',
              style: TextStyle(
                color: AppColor.Primary,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomButton(
              title: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
