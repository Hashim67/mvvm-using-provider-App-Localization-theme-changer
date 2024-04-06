import 'dart:convert';

import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mvvm/Data/app_exceptions.dart';
import 'package:mvvm/Data/network/base_api_services.dart';

class NetworkApiService extends BaseApiServices {
  ///// Handle Get Api /////

  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    log('responseJson get pi >>> $responseJson');

    return responseJson;
  }

  ///// Handle Post Api //////

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      Response response = await post(
        Uri.parse(url),
        body: data,
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  //////// Handle Responses both Get and Post Api ///////

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        log('Status Code >>>> ${response.statusCode == 200}   Response Body >>>> ${response.body}');

        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      default: 
        throw FetchDataException(
            'Error accured while communicating with server' +
                'with status code' +
                response.statusCode.toString());
    }
  }
}
