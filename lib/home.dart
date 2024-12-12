import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SiSatwa: Aplikasi Pelaporan Hewan'),
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
                'Selamat Datang di SiSatwa',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Aplikasi pelaporan hewan inpasif dan endemik seluruh dunia.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  FeatureCard(
                    icon: Icons.pets,
                    title: 'Laporan Hewan',
                    description: 'Laporan detail hewan inpasif.',
                    onTap: () => Navigator.pushNamed(context, '/daftar_hewan'),
                  ),
                  FeatureCard(
                    icon: Icons.local_hospital,
                    title: 'Laporan Endemik',
                    description: 'Informasi tentang kasus endemik.',
                    onTap: () => Navigator.pushNamed(context, '/detail'),
                  ),
                  FeatureCard(
                    icon: Icons.report,
                    title: 'Cara Melaporkan',
                    description: 'Panduan lengkap untuk melaporkan kasus.',
                    onTap: () => Navigator.pushNamed(context, '/cara_melaporkan'),
                  ),
                  FeatureCard(
                    icon: Icons.info,
                    title: 'Informasi Hewan',
                    description: 'Data dan fakta tentang hewan langka.',
                    onTap: () => Navigator.pushNamed(context, '/informasi_hewan'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Berita Terkini',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              NewsCard(
                title: 'Peningkatan Kasus Inpasif di Kota A',
                description: 'Kasus inpasif di Kota A meningkat drastis. Baca selengkapnya.',
              ),
              NewsCard(
                title: 'Upaya Penanggulangan Endemik',
                description: 'Pemerintah melakukan upaya besar untuk mengatasi masalah endemik.',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        currentIndex: 0, // Indeks awal untuk item yang dipilih
  onTap: (index) {
    switch (index) {
      case 0:
        // Tetap di halaman Home
        break;
      case 1:
        Navigator.pushNamed(context, '/notifikasi');
        break;
      case 2:
        Navigator.pushNamed(context, '/pengaturan');
        break;
    }
  },
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: 'Notifikasi',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Pengaturan',
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Colors.teal),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String description;

  const NewsCard({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Laporan'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Detail Laporan Endemik',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Berikut adalah rincian laporan kasus endemik yang telah dilaporkan di wilayah Anda.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.location_on, color: Colors.teal),
                          SizedBox(width: 8),
                          Text(
                            'Lokasi: Wilayah A',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Deskripsi: Kasus demam berdarah meluas di wilayah A dengan jumlah pasien meningkat 50% dalam 2 minggu terakhir.',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Laporkan Kasus Baru',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InformasiHewanPage extends StatelessWidget {
  const InformasiHewanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Hewan Terancam'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          InformasiHewanCard(
            imageUrl: 'https://example.com/tiger_image.jpg',
            nama: 'Harimau Sumatra',
            deskripsi:
                'Harimau Sumatra adalah subspesies harimau yang hanya ditemukan di Pulau Sumatra. Populasi mereka terus menurun akibat perburuan dan hilangnya habitat.',
            negara: 'Indonesia',
          ),
          const SizedBox(height: 10),
          InformasiHewanCard(
            imageUrl: 'https://example.com/rhino_image.jpg',
            nama: 'Badak Jawa',
            deskripsi:
                'Badak Jawa adalah salah satu spesies badak paling langka di dunia. Mereka ditemukan di Taman Nasional Ujung Kulon.',
            negara: 'Indonesia',
          ),
        ],
      ),
    );
  }
}

class InformasiHewanCard extends StatelessWidget {
  final String imageUrl;
  final String nama;
  final String deskripsi;
  final String negara;

  const InformasiHewanCard({
    required this.imageUrl,
    required this.nama,
    required this.deskripsi,
    required this.negara,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              nama,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              deskripsi,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.flag, size: 18, color: Colors.teal),
                const SizedBox(width: 4),
                Text(
                  negara,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          NotificationCard(
            title: 'Berita Terbaru',
            description: 'Hewan langka Panda Merah kini terancam punah di Nepal.',
          ),
          NotificationCard(
            title: 'Informasi Baru',
            description: 'Kasus inpasif meningkat di wilayah Amazon.',
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String description;

  const NotificationCard({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
    );
  }
}

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