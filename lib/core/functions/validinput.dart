import 'package:get/get.dart';

ValidInput(String val, int min,int max,String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username ";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not valid email ";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid PHONE ";
    }
  }
  if(val.isEmpty){
     return "value can't be Empty ";
    
  }
  if(val.length < min){
     return "value can't be less $min  ";
    
  }
  if(val.length > max){
     return "value can't be larger $max  ";
    
  }
  
}
