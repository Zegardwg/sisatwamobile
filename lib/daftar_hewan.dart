import 'package:flutter/material.dart';

class DaftarHewanPage extends StatelessWidget {
  DaftarHewanPage({super.key});

  final GlobalKey _infoKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Hewan'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Daftar Hewan Terdeteksi',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              HewanCard(
                imageUrl: 'https://via.placeholder.com/150',
                title: 'Harimau Sumatera',
                description: 'Harimau asli pulau Sumatera yang terancam punah.',
              ),
              HewanCard(
                imageUrl: 'https://via.placeholder.com/150',
                title: 'Badak Jawa',
                description: 'Badak bercula satu yang langka dan dilindungi.',
              ),
              HewanCard(
                imageUrl: 'https://via.placeholder.com/150',
                title: 'Orangutan Kalimantan',
                description: 'Primata cerdas yang hanya ditemukan di Kalimantan.',
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Scrollable.ensureVisible(
                    _infoKey.currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'Lihat Informasi Tambahan',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                key: _infoKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Informasi Tambahan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hewan-hewan di atas termasuk ke dalam kategori fauna yang dilindungi oleh undang-undang Indonesia. Upaya pelestarian terus dilakukan oleh berbagai pihak untuk memastikan keberlangsungan hidup mereka.',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Informasi Penting',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Jika Anda menemukan hewan yang terancam punah, harap segera melapor ke pihak berwenang.',
                style: TextStyle(fontSize: 14, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HewanCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const HewanCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Image.network(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
