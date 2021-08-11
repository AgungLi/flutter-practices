import 'dart:convert';

import 'package:http/http.dart' as http;

class GetHttpStateful {
  String id, fullname, email, avatar;

  GetHttpStateful({this.avatar, this.email, this.fullname, this.id});

  static Future<GetHttpStateful> connectAPI(String id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/" + id);
    var hasilResponse = await http.get(url);

    var data =
        (json.decode(hasilResponse.body) as Map<String, dynamic>)["data"];

    print(data);
    return GetHttpStateful(
      id: data['id'].toString(),
      fullname: data['first_name'] + " " + data['last_name'],
      avatar: data['avatar'],
      email: data['email'],
    );
  }
}
