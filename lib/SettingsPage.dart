import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profil Pengguna',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.person, color: Colors.teal),
              title: Text('Nama Pengguna'),
              subtitle: Text('John Doe'),
            ),
            const ListTile(
              leading: Icon(Icons.email, color: Colors.teal),
              title: Text('Email'),
              subtitle: Text('john.doe@example.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone, color: Colors.teal),
              title: Text('Nomor Telepon'),
              subtitle: Text('+62 812 3456 7890'),
            ),
          ],
        ),
      ),
    );
  }
}
