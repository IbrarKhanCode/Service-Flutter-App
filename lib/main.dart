import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:service_app/View%20Model/Auth_Provider/auth_provider.dart';
import 'package:service_app/View%20Model/Auth_Provider/signup_provider.dart';
import 'package:service_app/View/Get_Started/get_started_screen.dart';


void main(){
  runApp(
    MultiProvider(
        providers: [
            ChangeNotifierProvider(create: (_) => AuthProvider()),
            ChangeNotifierProvider(create: (_) => SignupProvider()),
        ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedScreen(),
    );
  }
}
