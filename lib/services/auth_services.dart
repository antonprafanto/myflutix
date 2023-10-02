part of 'services.dart';

class AutServices {
  // ignore: prefer_final_fields
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static String? get id => null;

  static int? get balance => null;

  static get user2 => null;

  static Future signUp(String email, String password, String name,
      List<String> selectedGenres, String selectedLanguage) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User1 user1 = result.user!.convertToUser(
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);

      await UserService.updateUser(user1);
    } catch (e) {}
  }
}
