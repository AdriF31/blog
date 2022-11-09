import 'package:blog/repository/repository.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  final Repository repository = Get.find<Repository>();
}
