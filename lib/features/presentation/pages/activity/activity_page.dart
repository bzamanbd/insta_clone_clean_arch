import 'package:flutter/material.dart';

import '../../../../consts.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'Activity',
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        centerTitle: true,
      ),
    ));
  }
}
