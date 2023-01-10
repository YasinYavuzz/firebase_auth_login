
import 'dart:async';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_connect/http/src/response/response.dart';

// burada bütün hata kodlarına göre yanıt döndürebiliriz. (Status Code)
// Örneğin : Kullanıcı adı bulunamadı gibi bir hata gelirse burada da onun kontrolü yapılabilir.
// Bunun gibi api'den dönen bütün cevaplarını kontrolü yapılabilir
FutureOr<dynamic> responseInterceptor(Request request, Response response) async { 
  if (response.statusCode != 200) {
    handleErrorStatus(response);
    return;
  }
  return response;
}

void handleErrorStatus(Response response){
  switch (response.statusCode) {
    case 400:
      
      break;
    default:
  }
  return;
}