// ignore_for_file: deprecated_member_use

import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_clean_arch/consts.dart';
import 'package:insta_clone_clean_arch/features/presentation/pages/credential/sign_up_page.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/button_container_widget.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/form_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            logoSection(),
            sizeVer(30.0),
            Form(
                child: Column(
              children: [
                const FormContainerWidget(
                  hintText: "Email",
                ),
                sizeVer(15),
                const FormContainerWidget(
                  hintText: "Password",
                  isPasswordField: true,
                ),
                sizeVer(15),
                ButtonContainerWidget(
                  onTap: () {},
                  text: 'Sign In',
                  color: blueColor,
                ),
              ],
            )),
            Flexible(
              flex: 2,
              child: Container(),
            ),
            const Divider(
              color: secondaryColor,
            ),
            footerTextSection(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SignUpPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget logoSection() => SvgPicture.asset(
        "assets/ic_instagram.svg",
        color: primaryColor,
      );
  Widget footerTextSection({required onTap}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Don't have an account?",
              style: TextStyle(
                color: primaryColor,
                fontSize: 11,
              )),
          InkWell(
            onTap: onTap,
            child: const Text(
              ' Sign Up ',
              style: TextStyle(
                color: primaryColor,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      );
}
