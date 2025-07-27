

import 'package:flutter/cupertino.dart';

class FavouritefItemProvider with ChangeNotifier{
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int value){
    _selectedItem.add(value);
  }

}