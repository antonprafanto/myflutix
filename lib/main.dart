import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myflutix/services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Melakukan inisialisasi Firebase saat aplikasi dijalankan.
  await Firebase.initializeApp();

  runApp(const MyApp());
}

// Kelas MyApp adalah kelas utama dari aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red, // Warna latar tombol
                ),
                onPressed: () async {
                  // Ketika tombol "Sign Up" ditekan, panggil metode signUp dari AutServices
                  // untuk mendaftarkan pengguna dengan data yang telah ditentukan.
                  await AutServices.signUp(
                      "antonprafao@gmail.com",
                      "1234125",
                      "anton",
                      ["Action", "Horror", "Sci-Fi", "Drama"],
                      "Korean");
                },
                child: const Text('Sign Up'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Color.fromARGB(255, 52, 123, 255), // Warna latar tombol
                ),
                onPressed: () async {
                  // Ketika tombol "Sign In" ditekan, panggil metode signIn dari AutServices
                  // untuk mengotentikasi pengguna dengan data yang telah ditentukan.
                  await AutServices.signIn("antonprafao@gmail.com", "1234125");
                },
                child: const Text('Sign In'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
