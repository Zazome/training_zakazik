class LoginModel {
  String? userId;
  String? userType;
  String? name;
  String? phone;
  String? email;

  LoginModel({this.userId, this.userType, this.name, this.phone, this.email});

  LoginModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userType = json['user_type'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_type'] = this.userType;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    return data;
  }
  @override
  String toString() {
    return 'userId: $userId,userType: $userType,name: $name,phone: $phone,email: $email';
  }
}
