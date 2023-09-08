import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_map_test/src/feature/map/domain/repository/map_repository.dart';
import 'package:yandex_map_test/src/feature/map/presentation/bloc/map_bloc.dart';
import 'package:yandex_map_test/src/feature/map/presentation/widget/map_page_body.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = context.read<MapRepository>();

    return Scaffold(
      body: BlocProvider(
        create: (context) => MapBloc(repository: repository),
        child: const MapPageBody(),
      ),
    );
  }
}
