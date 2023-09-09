import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_map_test/src/common/constant/app_colors.dart';
import 'package:yandex_map_test/src/feature/map/presentation/bloc/map_bloc.dart';
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
              onMapCreated: (controller) {
                mapBloc.add(MapEvent.started(controller: controller));
              },
            ),
          ),
          state.maybeMap(
            orElse: () => Container(),
            loading: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          Positioned(
            left: 16,
            top: MediaQuery.paddingOf(context).top + 8,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
              child: CupertinoButton(
                child: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: MediaQuery.paddingOf(context).bottom + 16,
            child: Column(
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    child: const Icon(
                      Icons.location_on,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 8),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    child: const Icon(Icons.remove),
                  ),
                  onPressed: () => mapBloc.add(const MapEvent.zoomOut()),
                ),
                const SizedBox(height: 8),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    child: const Icon(Icons.add),
                  ),
                  onPressed: () => mapBloc.add(const MapEvent.zoomIn()),
                )
              ],
            ),
          ),
        ],
      ),
      listener: (context, state) {},
    );
  }
}
