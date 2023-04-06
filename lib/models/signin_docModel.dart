class DocAccountModel{
  final dynamic? email;
  final dynamic? password;

  DocAccountModel( { required this.email,required this.password});

  factory DocAccountModel.fromjson(jsonData){
    return DocAccountModel(email:jsonData['email'] ,password: jsonData['password']);
  }
}