import 'package:mch/core/class/crud.dart';
import 'package:mch/linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getDataa() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }
}
