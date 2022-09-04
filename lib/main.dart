import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //hine debug label in right corner
      theme: ThemeData(
        fontFamily: 'Play',
      ),
      home: const Scaffold(
        body: SafeArea(
          child: NoiseMeter(),
        ),
      ),
    ),
  );
}

class NoiseMeter extends StatelessWidget {
  const NoiseMeter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () => {},
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
                onTap: () {},
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
        Row(
          children: [
            InkWell(
              hoverColor: Colors.amber[900],
              focusColor: Colors.red[900],
              splashColor: Colors.indigo,
              onTap: () {},
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Image.asset(
                  'assets/images/save.png',
                  width: 30,
                  height: 75,
                ),
              ),
            ),
            Material(
              color: const Color.fromARGB(255, 230, 230, 230),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
              child: InkWell(
                hoverColor: Colors.amber[900],
                focusColor: Colors.red[900],
                splashColor: Colors.indigo,
                onTap: () {},
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Image.asset(
                    'assets/images/mic_passive.png',
                    width: 30,
                    height: 75,
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                hoverColor: Colors.amber[900],
                focusColor: Colors.red[900],
                splashColor: Colors.indigo,
                onTap: () {},
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
                child: Image.asset(
                  'assets/images/list.png',
                  width: 30,
                  height: 75,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  hoverColor: Colors.amber[900],
                  focusColor: Colors.red[900],
                  splashColor: Colors.indigo,
                  onTap: () {},
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                  child: Image.asset(
                    'assets/images/timer.png',
                    width: 30,
                    height: 75,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
