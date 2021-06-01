import 'package:dio/dio.dart' as dio;

import '../constants/text_constants.dart';
import '../errors/failures.dart';

class ErrorUtils {
  ErrorUtils._();
  static void remoteErrorHandling(dynamic error) {
    if (error is dio.DioError) {
      if (error.response != null && error.response.statusCode == 304) {
        throw error;
      } else if (error.response != null &&
          error.response.statusMessage.isNotEmpty) {
        var msg = "";
        if (error.response.data != null) {
          if (error.response.data is String) {
            msg = error.response.data as String;
          } else if (error.response.data is Map<String, dynamic>) {
            msg = error.response.data['message'] != null
                ? error.response.data['message'] as String
                : cSomethingWentWrongMessage;
          }
        } else {
          if (error.message != null) {
            msg = error.message;
          } else {
            msg = cSomethingWentWrongMessage;
          }
        }
        throw ServerFailure(message: msg);
      }
    }
    throw const ServerFailure(message: cSomethingWentWrongMessage);
  }
}
