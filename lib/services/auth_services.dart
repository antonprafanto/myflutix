part of 'services.dart';

class AutServices {
  // ignore: prefer_final_fields
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static get user1 => null;

  static Future<void> signUp(String email, String password, String name,
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

  static Future<void> signIn(String email, String password) async {
    try {
      UserCredential result = (await _auth.signInWithEmailAndPassword(
          email: email, password: password));
    } catch (e) {}
  }
}

class SignInSignUpResult {
  final User1 user1;
  final String message;

  SignInSignUpResult({required this.user1, required this.message});
}
