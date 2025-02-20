```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null; // Or throw a custom exception
    }
  } catch (e) {
    print('Error: $e');
    return null; // Or rethrow or handle differently
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data received: $data');
  } else {
    print('Failed to receive data.');
  }
}
```