Function(String) pwdValidator = (String value) {
  if (value.length < 8) {
    return 'Password must be longer than 8 characters';
  } else {
    return null;
  }
};

Function(String) emailValidator = (String value) {
  Pattern pattern =
      r'^[a-z]+\.([0-9]{8})+(@iiitsonepat.ac.in)$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Email format is invalid';
  } else {
    return null;
  }
};
