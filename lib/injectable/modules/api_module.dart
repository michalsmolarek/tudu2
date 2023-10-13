// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';

// import '../../data/data_source/retrofit_api_data_source_impl.dart';

// @module
// abstract class ApiModule {
//   @injectable
//   Dio get client => Dio(
//         BaseOptions(
//           contentType: 'application/json',
//           connectTimeout: const Duration(seconds: 30),
//           receiveTimeout: const Duration(seconds: 30),
//         ),
//       )..interceptors.addAll([
//           prettyDioLogger,
//         ]);

//   RetrofitApiDataSourceImpl apiDataSource(Dio dio) => RetrofitApiDataSourceImpl(
//         dio,
//         baseUrl: '',
//       );
// }
