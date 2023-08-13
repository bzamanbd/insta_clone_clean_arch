// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: logoSection(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: appBarActionSection(onTap: () {}),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                avatarAndNameSection(),
                moreVertSection(onTap: () {}),
              ],
            ),
            sizeVer(10),
            postImageSection(
              height: MediaQuery.of(context).size.height * .3,
            ),
            sizeVer(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customIconWidget(
                      onTap: () {},
                      iconName: Icons.favorite_outline,
                    ),
                    sizeHor(10),
                    customIconWidget(
                      onTap: () {},
                      iconName: Feather.message_circle,
                    ),
                    sizeHor(10),
                    customIconWidget(
                      onTap: () {},
                      iconName: Feather.send,
                    ),
                  ],
                ),
                customIconWidget(onTap: () {}, iconName: Icons.bookmark_border),
              ],
            ),
            sizeVer(10),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customRichTxtWidget(
                  leftText: '1',
                  centerText: ' ',
                  rightText: 'likes',
                  fontSize: 12.0,
                  leftFontWeight: FontWeight.bold,
                  rightFontWeight: FontWeight.bold,
                ),
                sizeVer(5),
                customRichTxtWidget(
                  leftText: "Elena",
                  centerText: ' ',
                  rightText: 'motioning',
                ),
                sizeVer(5),
                customRichTxtWidget(
                  leftText: 'View all ',
                  centerText: '1',
                  rightText: ' comments',
                  fontColor: secondaryColor,
                  fontSize: 12.0,
                  leftFontWeight: FontWeight.normal,
                ),
                sizeVer(5),
                customRichTxtWidget(
                  leftText: '13/Aug/2023',
                  centerText: '',
                  rightText: '',
                  fontColor: secondaryColor,
                  fontSize: 11.0,
                  leftFontWeight: FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget logoSection() => SvgPicture.asset(
        "assets/ic_instagram.svg",
        color: primaryColor,
        height: 32,
      );

  Widget appBarActionSection({required onTap}) => GestureDetector(
        onTap: onTap,
        child: const Icon(
          FontAwesomeIcons.facebookMessenger,
          color: primaryColor,
        ),
      );

  Widget avatarAndNameSection() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor: secondaryColor.withOpacity(.35),
          ),
          sizeHor(10),
          const Text(
            'data',
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
  Widget moreVertSection({required onTap}) => GestureDetector(
        onTap: onTap,
        child: const Icon(
          Icons.more_vert,
          color: primaryColor,
        ),
      );
  Widget postImageSection({required double height, Widget? child}) => Container(
        width: double.infinity,
        height: height,
        color: secondaryColor,
        child: child,
      );
  Widget customIconWidget({
    required onTap,
    required iconName,
  }) =>
      InkWell(
        onTap: onTap,
        child: Icon(
          iconName,
          color: primaryColor,
        ),
      );
  Widget customRichTxtWidget({
    required leftText,
    FontWeight? leftFontWeight = FontWeight.w600,
    required centerText,
    FontWeight? centerFontWeight = FontWeight.w400,
    required rightText,
    FontWeight? rightFontWeight = FontWeight.w400,
    double? fontSize,
    Color? fontColor,
  }) =>
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: leftText,
              style: TextStyle(
                fontWeight: leftFontWeight,
                color: fontColor,
                fontSize: fontSize,
              ),
            ),
            TextSpan(
              text: centerText,
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
                fontWeight: centerFontWeight,
              ),
            ),
            TextSpan(
                text: rightText,
                style: TextStyle(
                  fontWeight: rightFontWeight,
                  fontSize: fontSize,
                  color: fontColor,
                )),
          ],
        ),
      );
}
