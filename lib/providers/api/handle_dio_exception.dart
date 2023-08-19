//TODO: dio exception handler example

// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_translate/flutter_translate.dart';
// import 'package:template/models/error_type_model.dart';
// import 'package:template/widgets/dialogs/show_default_dialog.dart';

// Future<T?> handleDioException<T>(
//   BuildContext context,
//   dynamic error, {
//   Map<int, Function(Response<ErrorTypeModel> error)>? errorHandlers,
// }) {
//   if (error is DioException) {
//     final statusCode = error.response!.statusCode!;
//     if (errorHandlers != null && errorHandlers.containsKey(statusCode)) {
//       var handler = errorHandlers[statusCode]!;
//       handler(Response(
//         requestOptions: error.response!.requestOptions,
//         data: ErrorTypeModel.fromJson(error.response!.data),
//         extra: error.response!.extra,
//         headers: error.response!.headers,
//         isRedirect: error.response!.isRedirect,
//         redirects: error.response!.redirects,
//         statusCode: error.response!.statusCode,
//         statusMessage: error.response!.statusMessage,
//       ));
//     } else {
//       if (kDebugMode) {
//         log('You should handle this error: ${error.response!.data.toString()} when: ${error.requestOptions.method} ${error.requestOptions.uri} with: ${error.requestOptions.data}');
//       } else {
//         log('You should handle this error: ${error.response!.data.toString()} when: ${error.requestOptions.method} ${error.requestOptions.uri}');
//       }

//       showDefaultSnackbar(
//         context,
//         SnackbarType.error,
//         translate(
//           "api.errors.unknown",
//         ),
//       );
//     }
//   }

//   return Future<T?>(() => null);
// }

// extension DioHelper on BuildContext {
//   showError(String message, {String? errorKey, Function()? action}) {
//     return (Response<ErrorTypeModel> e) {
//       if (errorKey == null || e.data?.message == errorKey) {
//         showDefaultSnackbar(this, SnackbarType.error, message);

//         if (action != null) {
//           action();
//         }
//       }
//     };
//   }
// }
