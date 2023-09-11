import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_map_test/src/common/application.dart';
import 'package:yandex_map_test/src/feature/map/data/data_provider/location_data_provider/location_data_provider_impl.dart';
import 'package:yandex_map_test/src/feature/map/data/data_provider/shop_data_provider/shop_data_provider_impl.dart';
import 'package:yandex_map_test/src/feature/map/domain/repository/map_repository.dart';
import 'package:yandex_map_test/src/feature/map/domain/repository/map_repository_impl.dart';

void main() {
  final locationDataProvider = LocationDataProviderImpl();
  final shopDataProvider = ShopDataProviderImpl();

  final mapRepository = MapRepositoryImpl(
    locationDataProvider: locationDataProvider,
    shopDataProvider: shopDataProvider,
  );

  runZonedGuarded(
    () => runApp(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<MapRepository>(
            create: (context) => mapRepository,
          ),
        ],
        child: const Application(),
      ),
    ),
    (error, stack) {
      log('Error', error: error, stackTrace: stack);
    },
  );
}
