import 'package:flutter/material.dart';
import 'package:sisatwav4/daftar_hewan.dart';
import 'login.dart';
import 'register.dart';
import 'home.dart';
// import 'detail.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/detail': (context) => const DetailPage(),
        '/daftar_hewan': (context) => DaftarHewanPage(), // Hilangkan 'const'
        '/cara_melaporkan': (context) => const CaraMelaporkanPage(),
        '/informasi_hewan': (context) => const InformasiHewanPage(),
        '/notifikasi': (context) => const NotificationPage(),
        '/pengaturan': (context) => const SettingsPage(),

      },
    );
  }
}

