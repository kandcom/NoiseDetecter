import 'package:flutter/material.dart';
import 'package:noise_detecter/widgets/bottom_bar.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dfd'),
      ),
      body: const SafeArea(
        child: Text('ифнормация'),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
