class User {
  final String firstName;
  final String lastName;

  const User({
    required this.firstName,
    required this.lastName,
  });
}

void main() {
  const toto = User(firstName: 'coucou', lastName: 'otot');
  const toto2 = User(firstName: 'coucou', lastName: 'otot');

  print(toto == toto2);
}
