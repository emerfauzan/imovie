import 'package:material_ui/material_ui.dart';
import 'package:imovie/pages/detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = List.generate(4, (i) => 'Film ${i + 1}');

    /*
    * Pada halaman home ini menggunakan Scaffold, dan isi body nya menggunakan GridView
    * Untuk kolom pada Gridview dibuat 2 kolom, dan di isi Card untuk menampilkan Icon dan Teks
    * */
    return Scaffold(
      appBar: AppBar(
        title: const Text("iMovie"), // Judul pada app bar
        backgroundColor: Theme.of(context).colorScheme.primary, // Warna background pada appbar menggunkan warna yang di set pada root project
        foregroundColor: Colors.white, // Warna foreground di ubah ke putih, sehingga warna teks nya menjadi putih
        centerTitle: true, // Digunakan agar judul app bar menjadi center
      ),
      body: GridView.builder( // Inisiasi GridView
        padding: const EdgeInsets.all(12), // Untuk set jarak grid ke tepi layar
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          crossAxisSpacing: 12, // Jarak horizontal antar card
          mainAxisSpacing: 12, // Jarak vertical antar card
          childAspectRatio: 0.75, // rasio lebar : tinggi card
        ),
        itemCount: movies.length, // jumlah item yang di tampilkan, berdasarkan data dummy yang digunakan
        itemBuilder: (context, index) {
          final title = movies[index]; // judul film untuk item ini

          return Card( // Inisiasi Card
            clipBehavior: Clip.antiAlias, // Untuk mengatur wrap content nya
            child: InkWell( // Membuat agar area card bisa di tap
              onTap: () { // callback saat di tap
                Navigator.push( // pindah ke halaman baru (ditaruh di atas stack)
                  context,
                  MaterialPageRoute( // route dengan animasi transisi standar Material
                    builder: (context) => Detail(title: title), // kirim judul ke Detail
                  ),
                );
              },
              onDoubleTap: () { // callback saat di double tap

              },
              child: Column( // Inisiasi isi card menggunakan column
                crossAxisAlignment: CrossAxisAlignment.stretch, // Agar isi content full lebar nya
                children: [
                  // Area gambar, mbackground menggunakan warna
                  Expanded(child: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: const Icon(Icons.movie, size: 48), // Icon movie dengan size 48
                  )),
                  Padding(padding: const EdgeInsets.all(8),
                    child: Text( // Inisiasi teks atau judul dengan isi teks dari data dummy
                      movies[index],
                      style: Theme.of(context).textTheme.titleMedium, // Ukuran teks
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, // untuk handle jika teks terlalu panjang
                    ),
                  ),
                ],
              ),
            ),
          );
        }

      )
    );
  }
}