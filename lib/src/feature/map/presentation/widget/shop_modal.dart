import 'package:flutter/material.dart';

class ShopModal extends StatelessWidget {
  const ShopModal({super.key});

  static Future<T?> show<T>(BuildContext context) async =>
      showModalBottomSheet<T?>(
        context: context,
        builder: (context) {
          return const ShopModal();
        },
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Построить маршрут'),
          ),
        ],
      ),
    );
  }
}
