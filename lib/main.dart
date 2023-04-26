import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:istagram/responsive/mobile_screen_layout.dart';
import 'package:istagram/responsive/responsive_layout_screen.dart';
import 'package:istagram/utils/colors.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Istagram - RIPOFF',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
  ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),),
    );
  }
}
