// todo : Remove the comment marks once to enable this file

// import 'package:dio/dio.dart';

// import '../configs/dio_instance.dart';

// class HttpUpdateRequest {
//   HttpUpdateRequest._();

//   static Future<Map<String, dynamic>> put<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     Object? content,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     return await dio
//         .put<T>(
//           api,
//           data: content,
//           options: Options(
//             headers: headers,
//             responseType: responseType,
//           ),
//           queryParameters: queryParameters,
//         )
//         .then((response) => {
//               "status": true,
//               "response": response,
//             })
//         .onError<DioException>((error, stackTrace) => {
//               "status": false,
//               "error": error,
//             });
//   }
// }
