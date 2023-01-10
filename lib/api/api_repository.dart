import 'package:firebase_baglama/api/api_provider.dart';

class ApiRepository{ // Modelleri dolduracağımız kısım
  final ApiProvider apiProvider;
  ApiRepository({required this.apiProvider});
  
  Future<dynamic> login(String email, String password) async{
    final res = await apiProvider.urlPost('api/login',{'email' : email, 'password' : password});
    if (res.statusCode == 200) {
      return res.body;
    }
  } 
}