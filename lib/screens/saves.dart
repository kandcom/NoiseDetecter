import 'package:flutter/material.dart';
import 'package:noise_detecter/widgets/bottom_bar.dart';

class Saves extends StatelessWidget {
  const Saves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('saves'),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
