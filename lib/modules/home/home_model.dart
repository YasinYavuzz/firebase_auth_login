class BlogModel {
  String? baslik;
  String? icerik;
  Users? user;

  BlogModel({this.baslik, this.icerik, this.user});

  BlogModel.fromJson(Map<String, dynamic> json) {
    baslik = json['baslik'];
    icerik = json['icerik'];
    user = json['user'];
  }
}

class Users {
  String? kullanici_adi;
  String? email;

  Users({this.email, this.kullanici_adi});

  Users.fromJson(Map<String, dynamic> json) {
    kullanici_adi = json['kullanici_adi'];
    email = json['email'];
  }
}
