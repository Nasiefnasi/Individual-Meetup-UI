// class LoginRequestModel{
//   String ?email;
//   String ?Password;

//   LoginRequestModel({
//     this.email,
//     this.Password
    
//   });
//   Map<String,dynamic> toJson(){
//     Map<String,dynamic> map = {'email': email.trim(),'password': password.trim(),}
//     return map;
//   }
// }

class LoginResponsetModel{
  String? token;
  String? error; 

}

class LoginRequestModel {
  String? email;
  String? password; 

  LoginRequestModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email,
      'password': password,
    };
    return map;
  }
}
