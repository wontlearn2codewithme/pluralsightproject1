import 'package:flutter/material.dart';
import 'package:pluralsightproject1/shared/menu_drawer.dart';

import '../shared/menu_bottom.dart';

class IntroScreenPage extends StatelessWidget {
  static const String routeName = '/introScreen';

  const IntroScreenPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Globo fitness'),
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MenuBottom(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/gymbro.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.white70,
            ),
            child: const Text(
              'Commit to be fit, dare to be great with Globo fitness',
              style: TextStyle(fontSize: 22, shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2.0,
                  color: Colors.grey,
                )
              ]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
