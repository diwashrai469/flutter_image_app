// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageResponseModel _$ImageResponseModelFromJson(Map<String, dynamic> json) {
  return _ImageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ImageResponseModel {
  int? get total => throw _privateConstructorUsedError;
  int? get totalHits => throw _privateConstructorUsedError;
  List<Hits>? get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageResponseModelCopyWith<ImageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResponseModelCopyWith<$Res> {
  factory $ImageResponseModelCopyWith(
          ImageResponseModel value, $Res Function(ImageResponseModel) then) =
      _$ImageResponseModelCopyWithImpl<$Res, ImageResponseModel>;
  @useResult
  $Res call({int? total, int? totalHits, List<Hits>? hits});
}

/// @nodoc
class _$ImageResponseModelCopyWithImpl<$Res, $Val extends ImageResponseModel>
    implements $ImageResponseModelCopyWith<$Res> {
  _$ImageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hits>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageResponseModelImplCopyWith<$Res>
    implements $ImageResponseModelCopyWith<$Res> {
  factory _$$ImageResponseModelImplCopyWith(_$ImageResponseModelImpl value,
          $Res Function(_$ImageResponseModelImpl) then) =
      __$$ImageResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? totalHits, List<Hits>? hits});
}

/// @nodoc
class __$$ImageResponseModelImplCopyWithImpl<$Res>
    extends _$ImageResponseModelCopyWithImpl<$Res, _$ImageResponseModelImpl>
    implements _$$ImageResponseModelImplCopyWith<$Res> {
  __$$ImageResponseModelImplCopyWithImpl(_$ImageResponseModelImpl _value,
      $Res Function(_$ImageResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_$ImageResponseModelImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hits>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageResponseModelImpl implements _ImageResponseModel {
  const _$ImageResponseModelImpl(
      {this.total, this.totalHits, final List<Hits>? hits})
      : _hits = hits;

  factory _$ImageResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageResponseModelImplFromJson(json);

  @override
  final int? total;
  @override
  final int? totalHits;
  final List<Hits>? _hits;
  @override
  List<Hits>? get hits {
    final value = _hits;
    if (value == null) return null;
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageResponseModel(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageResponseModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageResponseModelImplCopyWith<_$ImageResponseModelImpl> get copyWith =>
      __$$ImageResponseModelImplCopyWithImpl<_$ImageResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ImageResponseModel implements ImageResponseModel {
  const factory _ImageResponseModel(
      {final int? total,
      final int? totalHits,
      final List<Hits>? hits}) = _$ImageResponseModelImpl;

  factory _ImageResponseModel.fromJson(Map<String, dynamic> json) =
      _$ImageResponseModelImpl.fromJson;

  @override
  int? get total;
  @override
  int? get totalHits;
  @override
  List<Hits>? get hits;
  @override
  @JsonKey(ignore: true)
  _$$ImageResponseModelImplCopyWith<_$ImageResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hits _$HitsFromJson(Map<String, dynamic> json) {
  return _Hits.fromJson(json);
}

/// @nodoc
mixin _$Hits {
  int? get id => throw _privateConstructorUsedError;
  String? get pageURL => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get previewURL => throw _privateConstructorUsedError;
  int? get previewWidth => throw _privateConstructorUsedError;
  int? get previewHeight => throw _privateConstructorUsedError;
  String? get webformatURL => throw _privateConstructorUsedError;
  int? get webformatWidth => throw _privateConstructorUsedError;
  int? get webformatHeight => throw _privateConstructorUsedError;
  String? get largeImageURL => throw _privateConstructorUsedError;
  int? get imageWidth => throw _privateConstructorUsedError;
  int? get imageHeight => throw _privateConstructorUsedError;
  int? get imageSize => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get downloads => throw _privateConstructorUsedError;
  int? get collections => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  int? get comments => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get userImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitsCopyWith<Hits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitsCopyWith<$Res> {
  factory $HitsCopyWith(Hits value, $Res Function(Hits) then) =
      _$HitsCopyWithImpl<$Res, Hits>;
  @useResult
  $Res call(
      {int? id,
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
      String? userImageURL});
}

/// @nodoc
class _$HitsCopyWithImpl<$Res, $Val extends Hits>
    implements $HitsCopyWith<$Res> {
  _$HitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageURL = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewURL = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatURL = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageURL = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? collections = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageURL: freezed == pageURL
          ? _value.pageURL
          : pageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      previewURL: freezed == previewURL
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatURL: freezed == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageURL: freezed == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageURL: freezed == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitsImplCopyWith<$Res> implements $HitsCopyWith<$Res> {
  factory _$$HitsImplCopyWith(
          _$HitsImpl value, $Res Function(_$HitsImpl) then) =
      __$$HitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      String? userImageURL});
}

/// @nodoc
class __$$HitsImplCopyWithImpl<$Res>
    extends _$HitsCopyWithImpl<$Res, _$HitsImpl>
    implements _$$HitsImplCopyWith<$Res> {
  __$$HitsImplCopyWithImpl(_$HitsImpl _value, $Res Function(_$HitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageURL = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewURL = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatURL = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageURL = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? collections = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(_$HitsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageURL: freezed == pageURL
          ? _value.pageURL
          : pageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      previewURL: freezed == previewURL
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatURL: freezed == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageURL: freezed == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageURL: freezed == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitsImpl implements _Hits {
  const _$HitsImpl(
      {this.id,
      this.pageURL,
      this.type,
      this.tags,
      this.previewURL,
      this.previewWidth,
      this.previewHeight,
      this.webformatURL,
      this.webformatWidth,
      this.webformatHeight,
      this.largeImageURL,
      this.imageWidth,
      this.imageHeight,
      this.imageSize,
      this.views,
      this.downloads,
      this.collections,
      this.likes,
      this.comments,
      this.userId,
      this.user,
      this.userImageURL});

  factory _$HitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? pageURL;
  @override
  final String? type;
  @override
  final String? tags;
  @override
  final String? previewURL;
  @override
  final int? previewWidth;
  @override
  final int? previewHeight;
  @override
  final String? webformatURL;
  @override
  final int? webformatWidth;
  @override
  final int? webformatHeight;
  @override
  final String? largeImageURL;
  @override
  final int? imageWidth;
  @override
  final int? imageHeight;
  @override
  final int? imageSize;
  @override
  final int? views;
  @override
  final int? downloads;
  @override
  final int? collections;
  @override
  final int? likes;
  @override
  final int? comments;
  @override
  final int? userId;
  @override
  final String? user;
  @override
  final String? userImageURL;

  @override
  String toString() {
    return 'Hits(id: $id, pageURL: $pageURL, type: $type, tags: $tags, previewURL: $previewURL, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatURL: $webformatURL, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageURL: $largeImageURL, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, collections: $collections, likes: $likes, comments: $comments, userId: $userId, user: $user, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageURL, pageURL) || other.pageURL == pageURL) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.previewURL, previewURL) ||
                other.previewURL == previewURL) &&
            (identical(other.previewWidth, previewWidth) ||
                other.previewWidth == previewWidth) &&
            (identical(other.previewHeight, previewHeight) ||
                other.previewHeight == previewHeight) &&
            (identical(other.webformatURL, webformatURL) ||
                other.webformatURL == webformatURL) &&
            (identical(other.webformatWidth, webformatWidth) ||
                other.webformatWidth == webformatWidth) &&
            (identical(other.webformatHeight, webformatHeight) ||
                other.webformatHeight == webformatHeight) &&
            (identical(other.largeImageURL, largeImageURL) ||
                other.largeImageURL == largeImageURL) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.collections, collections) ||
                other.collections == collections) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userImageURL, userImageURL) ||
                other.userImageURL == userImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        pageURL,
        type,
        tags,
        previewURL,
        previewWidth,
        previewHeight,
        webformatURL,
        webformatWidth,
        webformatHeight,
        largeImageURL,
        imageWidth,
        imageHeight,
        imageSize,
        views,
        downloads,
        collections,
        likes,
        comments,
        userId,
        user,
        userImageURL
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitsImplCopyWith<_$HitsImpl> get copyWith =>
      __$$HitsImplCopyWithImpl<_$HitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitsImplToJson(
      this,
    );
  }
}

abstract class _Hits implements Hits {
  const factory _Hits(
      {final int? id,
      final String? pageURL,
      final String? type,
      final String? tags,
      final String? previewURL,
      final int? previewWidth,
      final int? previewHeight,
      final String? webformatURL,
      final int? webformatWidth,
      final int? webformatHeight,
      final String? largeImageURL,
      final int? imageWidth,
      final int? imageHeight,
      final int? imageSize,
      final int? views,
      final int? downloads,
      final int? collections,
      final int? likes,
      final int? comments,
      final int? userId,
      final String? user,
      final String? userImageURL}) = _$HitsImpl;

  factory _Hits.fromJson(Map<String, dynamic> json) = _$HitsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get pageURL;
  @override
  String? get type;
  @override
  String? get tags;
  @override
  String? get previewURL;
  @override
  int? get previewWidth;
  @override
  int? get previewHeight;
  @override
  String? get webformatURL;
  @override
  int? get webformatWidth;
  @override
  int? get webformatHeight;
  @override
  String? get largeImageURL;
  @override
  int? get imageWidth;
  @override
  int? get imageHeight;
  @override
  int? get imageSize;
  @override
  int? get views;
  @override
  int? get downloads;
  @override
  int? get collections;
  @override
  int? get likes;
  @override
  int? get comments;
  @override
  int? get userId;
  @override
  String? get user;
  @override
  String? get userImageURL;
  @override
  @JsonKey(ignore: true)
  _$$HitsImplCopyWith<_$HitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
