import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_map_test/src/common/theme/theme_builder.dart';
import 'package:yandex_map_test/src/feature/map/presentation/bloc/map_bloc.dart';
import 'package:yandex_map_test/src/feature/map/presentation/model/map_marker.dart';
import 'package:yandex_map_test/src/feature/map/presentation/widget/shop_modal.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPageBody extends StatelessWidget {
  const MapPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mapBloc = context.read<MapBloc>();

    return BlocConsumer<MapBloc, MapState>(
      builder: (context, state) => Stack(
        children: [
          Positioned.fill(
            child: YandexMap(
              mapObjects: state.markers
                  .map(
                    (e) => e.createPlaceMarkObject(
                      (p0, p1) => _onMarkerPressed(context, e),
                    ),
                  )
                  .toList(),
              onMapCreated: (controller) {
                mapBloc.add(MapEvent.started(controller: controller));
              },
            ),
          ),
          state.maybeMap(
            orElse: () => Container(),
            loading: (state) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          Positioned(
            left: 16,
            top: MediaQuery.paddingOf(context).top + 8,
            child: ElevatedButton(
              child: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          Positioned(
            right: 16,
            top: MediaQuery.paddingOf(context).top + 8,
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.search_outlined),
            ),
          ),
          Positioned(
            right: 16,
            bottom: MediaQuery.paddingOf(context).bottom + 16,
            child: Column(
              children: [
                ElevatedButton(
                  style: ThemeBuilder.circleElevatedButtonStyle.peach,
                  onPressed: () => mapBloc.add(
                    const MapEvent.showMyLocation(),
                  ),
                  child: const Icon(Icons.location_on),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ThemeBuilder.circleElevatedButtonStyle,
                  onPressed: () => mapBloc.add(const MapEvent.zoomOut()),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ThemeBuilder.circleElevatedButtonStyle,
                  onPressed: () => mapBloc.add(const MapEvent.zoomIn()),
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),
        ],
      ),
      listener: (context, state) {},
    );
  }

  void _onMarkerPressed(BuildContext context, MapMarker mapMarker) {
    switch (mapMarker) {
      case ShopMarker marker:
        _onShopMarkerPressed(context, marker);
      case UserMarker marker:
        _onUserMarkerPressed(context, marker);
    }
  }

  void _onShopMarkerPressed(BuildContext context, ShopMarker marker) {
    ShopModal.show(context);
  }

  void _onUserMarkerPressed(BuildContext context, UserMarker marker) {}
}
