import 'dart:convert';

import 'package:apicallproject/MODAL/listModal.dart';
import 'package:http/http.dart' as http;

Future<List<ListModal>> getAlbumList() async {
  try {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    );

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      List<ListModal> albumList = [];
      body.forEach((listData) {
        ListModal cartResponse = ListModal.fromJson(listData);
        albumList.add(cartResponse);
      });

      return albumList;
    } else {
      print("somthing else");
    }
  } catch (e) {
    print(e.toString());
  }
  throw Exception('Unexpected error occured!');
}
