import 'package:get/get.dart';

import 'base_provider.dart';

class ApiProvider extends BaseProvider{
  Future<Response> urlPost(String path, Object data) async {
    return post(path, data); // GetConnect' ten gelen metodlar.
  }

  Future<Response> urlGet(String path) async {
    return get(path); // GetConnect' ten gelen metodlar.
  }
}