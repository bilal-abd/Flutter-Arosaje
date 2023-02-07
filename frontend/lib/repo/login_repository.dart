// import 'package:dio/dio.dart' hide Response;
// import 'package:get/get.dart';

// abstract class Login {
//   login(String email, String password) async {
//     final String url = "http://127.0.0.1:8000/api/login";
//     final body = {"email": "bilalabd@gmail.com", "password": "1234"};
//     Response response;

//     final dio = Dio();

//     response = (await dio.post(url, data: body)) as Response;
//     if (response.statusCode == 200) {
//       final data = response.body;
//     } else {
//       return null;
//     }
//   }
// }
