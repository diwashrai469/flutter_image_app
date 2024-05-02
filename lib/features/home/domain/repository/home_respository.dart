import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/services/network_services.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';

abstract class IHomeRepository {
  Future<Either<NetworkFailure, ImageResponseModel>> getImages();
  Future<Either<NetworkFailure, ImageResponseModel>> filterImage(
      String queryString);
}
