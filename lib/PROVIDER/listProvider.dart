import 'package:apicallproject/MODAL/listModal.dart';
import 'package:flutter/cupertino.dart';

class ListProvider with ChangeNotifier {
  List<ListModal> dataList = [];

  setPostList(List<ListModal> list) {
    dataList.addAll(list);
    notifyListeners();
  }
}
