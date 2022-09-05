import 'package:flutter/material.dart';
import 'package:noise_detecter/widgets/bottom_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () => {Navigator.of(context).pushNamed('/info')},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/images/info.png',
                        width: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      Navigator.of(context).pushNamed('/settings');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/settings.png',
                        width: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.red[400],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      '43.1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                        color: Color.fromARGB(255, 61, 61, 61),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      color: const Color.fromARGB(255, 224, 224, 224),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Min 35.1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Max 35.1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ]),
            ),
            const SizedBox()
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
