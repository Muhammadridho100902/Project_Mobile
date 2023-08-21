class ValidationException implements Exception{
  String? message;

  ValidationException(this.message);
}

class Validation{
  static validate(String username, String paswoord){
    if(username == ''){
      throw ValidationException("The username is blank");
    }
    if(paswoord == ''){
      throw ValidationException("The username is blank");
    }
  }
}

void main(){
  print(Validation.validate("Rhino", "12334"));
}