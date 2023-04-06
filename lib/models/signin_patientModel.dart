class patientSigninModel{
  final dynamic? username;
  final dynamic? password;

  patientSigninModel( { required this.username,required this.password});

  factory patientSigninModel.fromjson(jsonData){
    return patientSigninModel(username:jsonData['email'] ,password: jsonData['password']);
  }
}