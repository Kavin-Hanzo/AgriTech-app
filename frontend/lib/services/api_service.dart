import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://localhost:8000';

  // Login API call
  Future<Map<String, dynamic>?> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}

/*
// frontend/lib/services/api_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static var client = http.Client();

  static Future getProfileData(String userId) async {
    var response = await client.get(
      Uri.parse('http://localhost:8000/users/$userId'),
      headers: {'Content-Type': 'application/json'},
    );
    return response.statusCode == 200 ? jsonDecode(response.body) : null;
  }
}
*/