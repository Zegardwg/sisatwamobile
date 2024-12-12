import 'package:flutter/material.dart';

class CaraMelaporkanPage extends StatelessWidget {
  const CaraMelaporkanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cara Melaporkan Hewan Terancam'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Panduan Cara Melaporkan',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.looks_one, color: Colors.teal),
              title: const Text('Buka Aplikasi SiSatwa'),
              subtitle: const Text('Pastikan Anda sudah login ke aplikasi.'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.looks_two, color: Colors.teal),
              title: const Text('Pilih Menu "Laporkan Kasus"'),
              subtitle: const Text('Menu ini dapat ditemukan di halaman utama.'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.looks_3, color: Colors.teal),
              title: const Text('Isi Formulir Pelaporan'),
              subtitle: const Text('Lengkapi informasi yang diperlukan, seperti jenis hewan, lokasi, dan deskripsi kasus.'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.looks_4, color: Colors.teal),
              title: const Text('Unggah Bukti'),
              subtitle: const Text('Tambahkan foto atau video untuk mendukung laporan Anda.'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.looks_5, color: Colors.teal),
              title: const Text('Kirim Laporan'),
              subtitle: const Text('Tekan tombol "Kirim" untuk mengirimkan laporan Anda.'),
            ),
          ],
        ),
      ),
    );
  }
}