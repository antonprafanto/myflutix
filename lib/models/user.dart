part of 'models.dart';

class User1 extends Equatable {
  final String id;
  final String email;
  final String name;
  //final String profilePicture;
  final List<String> selectedGenres;
  final String selectedLanguage;
  final int balance;

  User1(this.id, this.email, this.name, this.selectedGenres, this.selectedLanguage, this.balance);

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        email,
        name,
        balance,
        //profilePicture,
        selectedGenres,
        selectedLanguage
      ];

  get profilePicture => null;
}
