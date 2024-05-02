import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/services/network_services.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';
import 'package:flutter_assignment/features/home/data/services/home_services.dart';
import 'package:flutter_assignment/features/home/domain/repository/home_respository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  final HomeServices _homeServices;

  HomeRepository(this._homeServices);
  @override
  Future<Either<NetworkFailure, ImageResponseModel>> getImages() async {
    try {
      var result = await _homeServices.getImage();
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<NetworkFailure, ImageResponseModel>> filterImage(
      String queryString) async {
    try {
      var result = await _homeServices.filterImage(queryString);
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
