import 'package:flutter/material.dart';
import 'package:insta_clone_clean_arch/features/presentation/pages/main_screen/main_screen.dart';

import 'features/presentation/pages/credential/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      darkTheme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}
