class ValidationAccount implements Exception {
  String? message;

  ValidationAccount(this.message);
}

class Validation {
  static void validate(String name, String password) {}
}

void main() {
  try {
    Validation.validate("", "");
  } on ValidationAccount catch (exception) {
    print("exception error: ${exception.message}");
  // } on ValidationAccount catch (exception) {
  //   print("exception error: ${exception.toString()}");
  }
}
