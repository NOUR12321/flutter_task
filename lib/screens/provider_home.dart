import 'package:flutter/material.dart';

class ProviderHome extends ChangeNotifier{
   bool _allSelected = true;
  void toggleAll(){
    _allSelected = !_allSelected ;
    notifyListeners();
  }
  bool get allSelected => _allSelected;
  
  
}