import 'package:flutter/material.dart';
import 'package:noise_detecter/widgets/bottom_bar.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('setting')),
      bottomNavigationBar: BottomBar(),
    );
  }
}
