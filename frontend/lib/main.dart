import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jbfynfjfebsxbgfydhxj.supabase.co',
    publishableKey: 'sb_publishable_F2c5GlA_qfxXRWTf6pXBXQ_ktWp05Cm',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello!'))),
    );
  }
}
