class StringNotFoundException implements Exception {}

class LengthNotFoundException implements Exception {}

void main() async {
  print('1');

  try {
    final value = await _getStringFromNetwork();
    final length = await _getLengthFromNetwork(value);
    print(length);
  } on LengthNotFoundException catch (error) {
    print('ça vient de la duxième');
  } on (LengthNotFoundException, StringNotFoundException) catch (error) {
    print('ça vient de la première');
  } catch (error) {
    print(error);
  } finally {
    print('2');
  }

  // _getStringFromNetwork().then((value) {
  //   _getLengthFromNetwork(value).then((length) {
  //     print(length);
  //   }).catchError((error) {
  //     print(error);
  //   });
  // }).catchError((error) {
  //   print(error);
  // });
}

Future<String> _getStringFromNetwork() {
  return Future.delayed(Duration(seconds: 1), () {
    return 'coucou';
  });
}

Future<int> _getLengthFromNetwork(String value) {
  return Future.delayed(Duration.zero, () {
    throw LengthNotFoundException();
    return value.length;
  });
}
