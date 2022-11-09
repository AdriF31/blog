import 'package:get/get.dart';

import '../data/network_core.dart';
import '../repository/repository.dart';
import '../repository/repository_impl.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<NetworkCore>(NetworkCore());
    Get.put<Repository>(RepositoryImpl());
  }
}
