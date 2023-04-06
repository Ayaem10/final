import 'package:final_dart/models/doc_accountModel.dart';
import 'package:flutter/cupertino.dart';

class docproviders extends ChangeNotifier{
  DocAccountModel? _docdat;
  set docdata(DocAccountModel? _docdataaa){
    _docdat=_docdataaa;
    notifyListeners();
  }
  DocAccountModel? get docdata{
    return _docdat;

  }
}