part of 'services.dart';

class UserService {
  static final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static get genre => null;

  static Future<void> updateUser(User1 user1) async {
    _userCollection.doc(user1.id).set({
      'email': user1.email,
      'name': user1.name,
      'balance': user1.balance,
      'delectedGenres': user1.selectedGenres,
      'selectedLanguages': user1.selectedLanguage,
      'profilePicture': user1.profilePicture ?? ""
    });
  }

  static Future<User1> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    return User1(id, snapshot['email'], snapshot['name'], snapshot['balance'],
        snapshot['selectedGenres'], snapshot['selectedLanguages']);
  }
}
