import 'dart:io';

void main() {
  Map details = {
    'name': 'dipsan',
    'address': 'birtamode',
    'email': 'kadariya@gamil.com'
  };
  print(details);
  print(details['name']);
  print(details['address']);

  Map<String, String> newDetails = {
    //this means that the key and value, both must be string.
   //   'name': 'dipsan', //here, name is key, dipsan is value, together.
      1 : 'dipsan' //this will give error.
    'address': 'birtamode',
    'email': 'kadariya@gamil.com'
  };
  print(newDetails['name']);
}
