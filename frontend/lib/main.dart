import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:frontend/login_screen/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jbfynfjfebsxbgfydhxj.supabase.co',
    publishableKey: 'sb_publishable_F2c5GlA_qfxXRWTf6pXBXQ_ktWp05Cm',
  );

  void main() {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {'/login': (context) => LoginPage()},
      ),
    );
  }
}
