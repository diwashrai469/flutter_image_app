import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/services/network_services.dart';
import 'package:flutter_assignment/core/services/toast_services.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';
import 'package:flutter_assignment/features/home/domain/usecase/home_usecase.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_state.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

class MockHomeuseUsecase extends Mock implements HomeUsecase {}

class MockToastService extends Mock implements ToastService {}

class MockNetworkfailure extends Mock implements NetworkFailure {}

void main() {
  group(
    "Unit test for SearchView",
    () {
      late MockHomeuseUsecase mockHomeuseUsecase;
      late HomeCubit homeCubit;
      late MockToastService mockToastService;
      late MockNetworkfailure mockNetworkfailure;

      setUp(() {
        mockHomeuseUsecase = MockHomeuseUsecase();
        mockToastService = MockToastService();
        mockNetworkfailure = MockNetworkfailure();
        homeCubit = HomeCubit(mockHomeuseUsecase, mockToastService);
      });

      const imageResponseModel = ImageResponseModel(
        total: 10,
        totalHits: 10,
        hits: [
          Hits(
              id: 8721090,
              pageURL:
                  "https://pixabay.com/illustrations/woman-flower-bloom-blossom-petals-8721090/",
              type: "illustration",
              tags: "woman, flower, nature",
              previewURL:
                  "https://cdn.pixabay.com/photo/2024/04/26/04/38/woman-8721090_150.jpg",
              previewWidth: 85,
              previewHeight: 150,
              webformatURL:
                  "https://pixabay.com/get/g11c3f7ffa5f0b80d3073060ff88fe0f53722efe419b6154d82995cb60d0e3d86af91853bab1555673d840628a922c70a5f582ddf6ffeef6a3a7f2298c50b3e32_640.jpg",
              webformatWidth: 362,
              webformatHeight: 640,
              largeImageURL:
                  "https://pixabay.com/get/g68c3097f7ed10a73118dd532dc1d0fcc2a1777259ef0b0c15120a5d0e8a85c448f778a32980eeaeb05733ff4aa2eca129e68637de3c4459c25c07ec2428682e9_1280.jpg",
              imageWidth: 2310,
              imageHeight: 4084,
              imageSize: 2355987,
              views: 889,
              downloads: 615,
              collections: 4,
              likes: 70,
              comments: 0,
              userId: 10327513,
              user: "NickyPe",
              userImageURL:
                  "https://cdn.pixabay.com/user/2024/02/05/16-05-14-742_250x250.jpg")
        ],
      );

      blocTest<HomeCubit, HomeState>(
        'emits [HomeloadingState, HomeloadedState] when getImage() function is called and returns non-empty data',
        build: () {
          when(() => mockHomeuseUsecase.filterImage("people"))
              .thenAnswer((_) async => const Right(imageResponseModel));
          return homeCubit;
        },
        act: (cubit) => cubit.searchImage(queryString: "people"),
        expect: () => [
          isA<HomeLoadingState>(),
          isA<HomeLoadedState>(),
        ],
      );

      blocTest<HomeCubit, HomeState>(
        'emits [HomeloadingState] when return error ',
        build: () {
          when(() => mockHomeuseUsecase.filterImage("people"))
              .thenAnswer((_) async => Left(mockNetworkfailure));
          return homeCubit;
        },
        act: (cubit) => cubit.searchImage(queryString: "people"),
        expect: () => [
          isA<HomeLoadingState>(),
        ],
      );
    },
  );
}
