import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:frontend/dashboard/storages/storages.dart';
import 'package:frontend/login_screen/login.dart';
import 'package:frontend/login_screen/welcome.dart';
import 'package:frontend/dashboard/maindashboard/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jbfynfjfebsxbgfydhxj.supabase.co',
    anonKey: 'sb_publishable_F2c5GlA_qfxXRWTf6pXBXQ_ktWp05Cm',
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => LoginPage(),
        '/home': (context) => Dashboard(),
        '/storage': (context) => Storage(),
      },
    ),
  );
}
