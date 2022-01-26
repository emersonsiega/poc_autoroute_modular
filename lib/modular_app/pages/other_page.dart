import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modular'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'OTHER PAGE',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Modular.to.popUntil((route) => route.isFirst);
              // TODO: How to back to autoroute (the route before modular app)
            },
            child: const Text('Back to AutoRoute'),
          ),
        ],
      ),
    );
  }
}
