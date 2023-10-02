part of 'extensions.dart';

extension FirebaseUserExtension on User {
  User1 convertToUser(
          {String name = "No Name",
          String email = "No Email",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          int balance = 50000}) =>
      User1(uid, email, name, selectedGenres, selectedLanguage, balance);
}
