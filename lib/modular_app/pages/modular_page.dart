import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ModularPage extends StatelessWidget {
  const ModularPage({Key? key}) : super(key: key);

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
              'HOME PAGE',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Modular.to.pushNamed('/other');
            },
            child: const Text('Navigate'),
          ),
        ],
      ),
    );
  }
}
