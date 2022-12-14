// ignore_for_file: empty_constructor_bodies

import 'package:flutter_app/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final Apiclient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("https://console.firebase.google.com/project/motorgate-60065/authentication/providers/product/popular");
  }
}
