import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/services/network_services.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';
import 'package:flutter_assignment/features/home/domain/repository/home_respository.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeUsecase {
  final IHomeRepository _iHomeRepository;

  HomeUsecase(this._iHomeRepository);

  Future<Either<NetworkFailure, ImageResponseModel>> getImage() async {
    return await _iHomeRepository.getImages();
  }

  Future<Either<NetworkFailure, ImageResponseModel>> filterImage(
      String queryString) async {
    return await _iHomeRepository.filterImage(queryString);
  }
}
