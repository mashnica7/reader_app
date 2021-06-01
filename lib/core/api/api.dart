import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'endpoints.dart';

@lazySingleton
class Api {
  final Dio dio;

  Api({@required this.dio});

  Future<Response> postRequest(String route, {String data}) async {
    addInterceptors();
    return dio.post(route, data: data);
  }

  Future<Response> patchRequest(String route, {String data}) async {
    addInterceptors();
    return dio.patch(route, data: data);
  }

  Future<Response> putRequest(String route, {String data}) async {
    addInterceptors();
    return dio.put(route, data: data);
  }

  Future<Response> getRequest(String route, {ResponseType responseType}) async {
    addInterceptors(responseType: responseType);
    return dio.get(route);
  }

  void addInterceptors({ResponseType responseType}) {
    if (dio.interceptors == null) return;
    dio.interceptors.clear();
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      try {
        options.baseUrl = cURL;

        options.connectTimeout = 10000;
        options.receiveTimeout = 50000;

        options.headers.addAll({
          Headers.contentTypeHeader: Headers.jsonContentType,
          Headers.acceptHeader: Headers.jsonContentType,
        });

        if (responseType != null) {
          options.responseType = responseType;
        }

        // DEBUG PRINTS
        debugPrint(
            "Perform request:\n method: ${options.method.toUpperCase()},\n path:${options.path}, \n baseURL:${options.baseUrl}");
        if (options.headers != null) debugPrint("header:${options.headers} ");
        if (options.data != null) {
          debugPrint("data:${json.decode(options.data.toString())} ");
        }

        return options;
      } catch (e) {
        debugPrint("INTERCEPTOR error: $e");
        return options;
      }
    }));
  }
}
