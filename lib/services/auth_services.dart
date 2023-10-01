part of 'services.dart';

class AutServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  
  static String? get id => null;
  
  static int? get balance => null;

  static Future<SignInSignUpResult> signUp(String email, String password, String name,
      List<String> selectedGenres, String selectedLanguage) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User1 user1 = result.user!.convertToUser(
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);

      await UserService.updateUser(user1);

      return SignInSignUpResult(user1: user1, message: '');
    } catch (e) {
      return SignInSignUpResult(user1: User1(id!, email, name, selectedGenres, selectedLanguage, balance!), message: e.toString());
    }
  }
}

class SignInSignUpResult {
  final User1 user1;
  final String message;

  SignInSignUpResult({required this.user1, required this.message});
}
