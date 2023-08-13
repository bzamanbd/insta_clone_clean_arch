import 'package:flutter/material.dart';

import '../../../../consts.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: InkWell(
            onTap: () {},
            child: const CircleAvatar(
                radius: 60,
                backgroundColor: secondaryColor,
                child: Icon(
                  Icons.upload,
                  color: primaryColor,
                  size: 40,
                )),
          ),
        ),
      ),
    );
  }
}
