import 'package:auth_supabase/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5a3NjZ3FsaWVrcGtzeWFpeXZ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM4MjE2NzcsImV4cCI6MjA0OTM5NzY3N30.GFKe1PbD7UcXB42fyyheTJSFLvXOmq4JvlFi7iRwMq4",
      url: "https://lykscgqliekpksyaiyvy.supabase.co");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const AuthGate(),
    );
  }
}
