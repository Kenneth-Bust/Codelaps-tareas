// Esta función filtra una colección de usuarios y devuelve solo aquellos que tienen 21 años o más.
Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((user) => user.age >= 21);
}

// Esta función filtra una colección de usuarios y devuelve solo aquellos cuyos nombres son de 3 caracteres o menos.
Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((user) => user.name.length <= 3);
}

// Clase que representa un usuario con nombre y edad.
class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

void main() {
  // Lista de usuarios de prueba.
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
    User('Dan', 12),
  ];

  try {
    final out = filterOutUnder21(users);
    if (out.any((user) => user.age < 21) || out.length != 2) {
      print(
        'Looks like `filterOutUnder21` is wrong, there are '
        'exactly two users with age under 21. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `filterOutUnder21`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `filterOutUnder21`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  try {
    final out = findShortNamed(users);
    if (out.any((user) => user.name.length > 3) || out.length != 2) {
      print(
        'Looks like `findShortNamed` is wrong, there are '
        'exactly two users with a three-letter name. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `findShortNamed`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `findShortNamed`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  print('Success. All tests passed!');
}
