part of 'services.dart';

// Kelas UserService adalah kelas yang menyediakan layanan untuk mengelola data pengguna.
class UserService {
  // Variabel statis _userCollection digunakan untuk mengakses koleksi 'users' di Firebase Firestore.
  static final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  // Variabel genre adalah variabel statis yang tampaknya belum diinisialisasi (bernilai null).
  static get genre => null;

  // Metode updateUser digunakan untuk memperbarui data pengguna.
  static Future<void> updateUser(User1 user1) async {
    // Menggunakan metode set() pada dokumen pengguna di koleksi '_userCollection' untuk memperbarui data.
    _userCollection.doc(user1.id).set({
      'email': user1.email,
      'name': user1.name,
      'balance': user1.balance,
      'delectedGenres': user1.selectedGenres, // Mungkin ada typo di sini, seharusnya 'selectedGenres'.
      'selectedLanguages': user1.selectedLanguage,
      'profilePicture': user1.profilePicture ?? "" // Menggunakan gambar profil jika tersedia, jika tidak, gunakan string kosong ("").
    });
  }

  // Metode getUser digunakan untuk mendapatkan data pengguna berdasarkan ID.
  static Future<User1> getUser(String id) async {
    // Mengambil dokumen pengguna dengan ID yang diberikan dari koleksi '_userCollection'.
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    // Membuat objek User1 dari data yang diambil dari Firestore.
    return User1(id, snapshot['email'], snapshot['name'], snapshot['balance'],
        snapshot['selectedGenres'], snapshot['selectedLanguages']);
  }
}
