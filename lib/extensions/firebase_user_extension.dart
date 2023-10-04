part of 'extensions.dart';

// Deklarasi ekstensi dengan nama FirebaseUserExtension pada objek User
extension FirebaseUserExtension on User {
  // Fungsi convertToUser yang akan digunakan untuk mengubah objek User menjadi objek User1
  User1 convertToUser(
          {String name =
              "No Name", // Parameter nama dengan nilai default "No Name"
          String email =
              "No Email", // Parameter email dengan nilai default "No Email"
          List<String> selectedGenres =
              const [], // Parameter selectedGenres dengan nilai default berupa list kosong
          String selectedLanguage =
              "English", // Parameter selectedLanguage dengan nilai default "English"
          int balance =
              50000}) => // Parameter balance dengan nilai default 50000
      User1(this.uid, email, name, selectedGenres, selectedLanguage, balance);
}
