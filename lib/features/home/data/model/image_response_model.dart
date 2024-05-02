import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_response_model.freezed.dart';
part 'image_response_model.g.dart';

@freezed
class ImageResponseModel with _$ImageResponseModel {
  const factory ImageResponseModel({
    int? total,
    int? totalHits,
    List<Hits>? hits,
  }) = _ImageResponseModel;

  factory ImageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseModelFromJson(json);
}

@freezed
class Hits with _$Hits {
  const factory Hits({
    int? id,
    String? pageURL,
    String? type,
    String? tags,
    String? previewURL,
    int? previewWidth,
    int? previewHeight,
    String? webformatURL,
    int? webformatWidth,
    int? webformatHeight,
    String? largeImageURL,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? collections,
    int? likes,
    int? comments,
    int? userId,
    String? user,
    String? userImageURL,
  }) = _Hits;

  factory Hits.fromJson(Map<String, dynamic> json) => _$HitsFromJson(json);
}
