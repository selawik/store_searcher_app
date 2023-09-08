import 'package:flutter/material.dart';
import 'package:yandex_map_test/src/common/theme/theme_builder.dart';
import 'package:yandex_map_test/src/feature/map/presentation/map_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yandex Map',
      theme: ThemeBuilder.buildLightTheme(),
      home: const MapPage(),
    );
  }
}
