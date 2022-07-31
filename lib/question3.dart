import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter you email");
  String? email = stdin.readLineSync()!;
  bool checkedEmail = emailVerification(email);
  if (checkedEmail == true) {
    print("Validation Success");
  } else {
    print("Validation fail");
  }

  print("Enter your phone number");
  String? phoneNumber = stdin.readLineSync()!;
  bool checkedPhoneNumber = phoneNumberValidation(phoneNumber);
  if (checkedPhoneNumber == true) {
    print("Validation Success");
  } else {
    print("Validation fail");
  }
}

bool emailVerification(String email) {

  if (email.startsWith("@gmail.com") || !email.endsWith("@gmail.com")) {
    return false;
  } else {
    return true;
  }
}

bool phoneNumberValidation(String phoneNumber) {

  if (phoneNumber.startsWith("09")) {
    phoneNumber=phoneNumber.replaceFirst("09", "+959");
    //print(phoneNumber);
  }
  if (phoneNumber.startsWith("+959") && phoneNumber.length >= 10) {
    return true;
  }else {
    return false;
  }
}
