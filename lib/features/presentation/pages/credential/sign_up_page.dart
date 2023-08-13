// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_clean_arch/consts.dart';
import 'package:insta_clone_clean_arch/features/presentation/pages/credential/sign_in_page.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/button_container_widget.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        reverse: true,
        dragStartBehavior: DragStartBehavior.down,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              sizeVer(50),
              logoSection(),
              sizeVer(35),
              profileImageSection(() {}),
              sizeVer(20),
              SizedBox(
                child: Column(
                  children: [
                    const FormContainerWidget(
                      hintText: "Username",
                    ),
                    sizeVer(15.0),
                    const FormContainerWidget(
                      hintText: "Email",
                    ),
                    sizeVer(15.0),
                    const FormContainerWidget(
                      hintText: "Password",
                      isPasswordField: true,
                    ),
                    sizeVer(15.0),
                    const FormContainerWidget(
                      hintText: "Bio",
                    ),
                    sizeVer(15.0),
                    ButtonContainerWidget(
                      onTap: () {},
                      text: 'Sign Up',
                      color: blueColor,
                    ),
                  ],
                ),
              ),
              sizeVer(80),
              const Divider(
                color: secondaryColor,
              ),
              footerTextSection(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SignInPage(),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget logoSection() => SvgPicture.asset(
        "assets/ic_instagram.svg",
        color: primaryColor,
      );

  Widget profileImageSection(VoidCallback? onTap) => Stack(
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
              "assets/profile_default.png",
            ),
          ),
          Positioned(
            right: -10,
            bottom: -15,
            child: IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.add_a_photo,
                color: blueColor,
              ),
            ),
          ),
        ],
      );
  Widget footerTextSection(VoidCallback? onTap) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Already have an account?',
              style: TextStyle(
                color: primaryColor,
                fontSize: 11,
              )),
          InkWell(
            onTap: onTap,
            child: const Text(
              ' Sign In ',
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
