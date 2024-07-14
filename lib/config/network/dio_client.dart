import 'package:bloc_exam/config/network/constant.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioClient {
  @lazySingleton
  Dio dio() => Dio(
        BaseOptions(
          baseUrl: baseUrl,
        ),
      )..interceptors.add(LogInterceptor());
}
