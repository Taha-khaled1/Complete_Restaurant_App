String massge1 = 'This field cannot be greater than';
String massge2 = 'This field cannot be smaller than';
String massge3 = 'This field cannot be empty';
validetor(String val, int min, int max) {
  if (val.length > max) {
    return '$massge1 $max';
  }
  if (val.length < min) {
    return '$massge2 $min';
  }
  if (val.isEmpty) {
    return '$massge3';
  }
}
