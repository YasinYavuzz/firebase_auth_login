import 'package:firebase_baglama/api/api_constants.dart';
import 'package:get/get.dart';
import 'api.dart';

class BaseProvider extends GetConnect{
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
    super.onInit();
  }
}