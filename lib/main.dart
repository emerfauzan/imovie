import 'package:imovie/pages/home.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
  * Ini adalah root dan entrypoint dari aplikasi
  * Pada widget ini mengatur tema dan route pada aplikasi
  * Tema yang dipilih yaitu menggunakan warna indigo
  * Terdapat dua halaman yang di definisikan di dalam route, yaitu Home dan Detail
  * Initial route mendefinisikan halaman mana yang pertama kali di akses ketika aplikasi terbuka di awal
  * */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iMovie',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.indigo),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home()
      },
    );
  }
}
