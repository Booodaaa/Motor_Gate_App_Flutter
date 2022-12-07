import 'package:get/get.dart';

class Apiclient extends GetConnect implements GetxService {
  late String token;
  final String appBlaseUrl;

  late Map<String, String> _mainHeaders;

  Apiclient({required this.appBlaseUrl}) {
    baseUrl = appBlaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json ; charset = UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
