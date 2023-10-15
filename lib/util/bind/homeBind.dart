import 'package:get/get.dart';
import '../../controller/HomeController.dart';

class HomeBind extends Bindings{
    @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'london'));
  }
}