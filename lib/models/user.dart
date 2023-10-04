part of 'models.dart';

// Kelas User1 adalah kelas model yang merepresentasikan seorang pengguna (user).
class User1 extends Equatable {
  final String id;
  final String email;
  final String name;
  final List<String> selectedGenres; // Daftar genre yang dipilih oleh pengguna.
  final String selectedLanguage; // Bahasa yang dipilih oleh pengguna.
  final int balance; // Saldo akun pengguna.

  // Konstruktor kelas User1 untuk menginisialisasi properti-propertinya.
  // Properti ini diisi dengan nilai dari parameter yang diterima saat pembuatan objek.
  User1(this.id, this.email, this.name, this.selectedGenres,
      this.selectedLanguage, this.balance);

  // Fungsi toString digunakan untuk menghasilkan representasi string dari objek User1.
  // Representasi ini mencakup ID, nama, dan email pengguna.
  @override
  String toString() {
    return "[$id] - $name, $email";
  }

  // Metode ini merupakan bagian dari mixin Equatable.
  // Ini digunakan untuk membandingkan objek User1 berdasarkan propertinya.
  @override
  List<Object?> get props =>
      [id, email, name, balance, selectedGenres, selectedLanguage];

  // Metode ini sekarang tidak digunakan (komentar).
  get profilePicture => null;
}
