import 'package:mch/core/class/crud.dart';
import 'package:mch/linkapi.dart';

class VerfycodeForgetpasswordData {
  Crud crud;
  VerfycodeForgetpasswordData(this.crud);
  postdata(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifycode, {
      "email":email,
      "verifycode":verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
