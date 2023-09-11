class User {
  int? age;
  String firstName;
  String lastName;

  User(this.age, {required this.firstName, required this.lastName});
}

void main() {
  final toto = User(null, firstName: 'coucou', lastName: 'otot');
  if(toto.firstName == null) {
    print('Coucou 1');
  }
  print(toto.firstName?.length ?? 'Coucou');
}
