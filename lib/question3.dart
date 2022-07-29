import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter you email");
  String? email = stdin.readLineSync()!;
  bool checkedEmail = emailVerification(email);
  if(checkedEmail==true){
    print("Validation Success");
  }else{
    print("Validation fail");
  }


  print("Enter your phone number");
  int? phoneNumber = int.parse(stdin.readLineSync()!);
  bool checkedPhoneNumber=phoneNumberValidation(phoneNumber);
  if(checkedPhoneNumber==true){
    print("Validation Success");
  }else{
    print("Validation fail");
  }
  
}

bool emailVerification(String email){
  List<String> temp=email.split('@gmail.com');
  //temp.remove(temp.last);
  if(temp[0]==[0-9]  || temp[0]=='' || temp.last!=''){
    return false;
  }else{
    return true;
  }

}

bool phoneNumberValidation(int phoneNumber){
  var temp = phoneNumber.toString();
  //List<int> phoneNumberList = temp.split('').map(int.parse).toList();
  List<String> phoneNumberList = temp.split('');
  if(phoneNumberList[0]=="9" && phoneNumberList[1]=="5" && phoneNumberList[2]=="9"){
    phoneNumberList.remove(phoneNumberList[0]);
    phoneNumberList.remove(phoneNumberList[1]);
    phoneNumberList[0]="+959";
  }else if (phoneNumberList[0]=="9") {
    phoneNumberList[0]="+959";
  }
  //print(phoneNumberList);
  if (phoneNumberList.length >= 10 && phoneNumberList[0] == "+959") {
    return true;
  } else {
    return false;
  }
}