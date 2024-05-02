import 'package:flutter_assignment/core/services/intercepters.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeServices {
  final DioService _dioService;

  HomeServices(
    this._dioService,
  );
  Future<ImageResponseModel> getImage() async {
    var response = await _dioService.http.get("&image_type=photo");

    return ImageResponseModel.fromJson(response.data);
  }

  Future<ImageResponseModel> filterImage(String queryString) async {
    var response =
        await _dioService.http.get("&q=$queryString&image_type=photo");

    return ImageResponseModel.fromJson(response.data);
  }
}
