import 'package:mch/core/class/crud.dart';
import 'package:mch/linkapi.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getDataa() async {
    var response = await crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
