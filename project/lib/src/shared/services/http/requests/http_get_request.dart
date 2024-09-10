// todo : Remove the comment marks once to enable this file

// import 'package:dio/dio.dart';

// import '../configs/dio_instance.dart';

// class HttpGetRequest {
// HttpGetRequest._();

//   static Future<dynamic> get<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     return await dio
//         .get<T>(
//           api,
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
//         .onError<DioException>(
//           (error, stackTrace) => {
//             "status": false,
//             "error": error,
//           },
//         );
//   }
// }

