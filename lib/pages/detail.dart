
import 'package:material_ui/material_ui.dart'; // import widget Material

class Detail extends StatelessWidget {
  final String title; // data judul yang diterima dari halaman Home

  const Detail({super.key, required this.title}); // title wajib diisi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // judul AppBar = judul card yang di-tap
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title, // tampilkan judul film di body
              style: Theme.of(context).textTheme.headlineMedium, // gaya teks besar dari theme
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // kembali ke halaman sebelumnya
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
 