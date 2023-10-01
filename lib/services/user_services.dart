part of 'services.dart';

class UserService {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static get genre => null;

  static Future<void> updateUser(User1 user1) async {
    String genres = "";

    for (var genres in user1.selectedGenres) {
      genres += genre + ((genre != user1.selectedGenres.last) ? ',' : '');
    }

    _userCollection.doc(user1.id).set({
      'email': user1.email,
      'name': user1.name,
      'balance': user1.balance,
      'delectedGenres': user1.selectedGenres,
      'selectedLanguages': user1.selectedLanguage,
      'profilePicture': user1.profilePicture ?? ""
    });
  }
}
