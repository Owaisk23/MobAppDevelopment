import 'package:http/http.dart' as HTTP;
import 'dart:convert' as CONVERT;

void main() async {
  final API = Uri.parse(
    'https://67d13a6e825945773eb37cfc.mockapi.io/dev/studentInfo',
  );
  HTTP.get(API).then((response) {
    if (response.statusCode == 200) {
      final data = CONVERT.jsonDecode(response.body);
      print(data);
      List<dynamic> studentInfo = data
      for (var student in studentInfo) {
        print('!!==============================!!');
        print('Name: ${student['studentName']}');
        print('Age: ${student['studentAge']}');
        print('Avatar: ${student['avatar']}');
      }
    }
  });

  // final Response = await HTTP.get(API);

  // print(Response.body);
}
