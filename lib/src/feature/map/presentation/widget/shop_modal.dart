import 'package:flutter/material.dart';

class ShopModal extends StatelessWidget {
  const ShopModal({super.key});

  static Future<T?> show<T>(BuildContext context) async =>
      await showModalBottomSheet<T?>(
        context: context,
        builder: (context) {
          return const ShopModal();
        },
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            child: Text('Построить маршрут'),
          ),
        ],
      ),
    );
  }
}
