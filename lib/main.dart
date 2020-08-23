import 'package:chatapp/presentation/login/google_login_page.dart';
import 'package:chatapp/presentation/top/top_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<bool> isLogin() async =>
    await FirebaseAuth.instance.currentUser() != null;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      await isLogin(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isLogin;
  MyApp(this.isLogin);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: isLogin ? TopPage() : LoginPage(),
    );
  }
}
