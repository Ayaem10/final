class DocAccountModel {
  final String name;
  final dynamic username;
  final dynamic email;
  final dynamic password;
  final dynamic specialization;
  final dynamic phone;
  final dynamic date;

  DocAccountModel({
    required this.name,
    required this.username,
    required this.email,
    required this.password,
    required this.specialization,
    required this.phone,
    required this.date,
  });

  factory DocAccountModel.fromjson(jsonData) {
    return DocAccountModel(
      name: jsonData['name'],
      username: jsonData['username'],
      email: jsonData['email'],
      password: jsonData['password'],
      specialization: jsonData['specialization'],
      phone: jsonData['phone'],
      date: jsonData['name'],
    );
  }
}
