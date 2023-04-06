import 'package:final_dart/helper/api.dart';
import 'package:final_dart/models/doc_accountModel.dart';

class CreateDocAccount {
  Future<DocAccountModel?> create_docAccount(
      {required String? name,
      required String? username,
      required dynamic email,
      required dynamic password,
      required dynamic specialization,
      required dynamic phone ,
      required dynamic date}) async {
    Map<String, dynamic> data = await Api().post(
      url: 'http://localhost:4000/doctor/signup',
      body: {
        "name": name,
        "username": username,
        "email": email,
        "password": password,"phone": phone,
        "specialization": specialization,
        'Dates': date
      },
    );

    return DocAccountModel.fromjson(data);
  }
}
