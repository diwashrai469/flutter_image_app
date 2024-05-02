import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioService {
  late final Dio _dio;
  Dio get http => _dio;

  DioService() {
    _dio = Dio();
    _dio.options.baseUrl =
        "https://pixabay.com/api/?key=43650469-05041f0aebbbee09175ec8867";
  }
}
