import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var itRoute = ModalRoute.of(context)?.settings.name;
    ifActiveMicButton() {
      if (itRoute == '/') {
        return const Color.fromARGB(255, 230, 230, 230);
      }
      return Colors.transparent;
    }

    ifActiveSavesButton() {
      if (itRoute == '/saves') {
        return const Color.fromARGB(255, 230, 230, 230);
      }
      return Colors.transparent;
    }

    return Row(
      children: [
        Material(
          color: ifActiveMicButton(),
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
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  'assets/images/save.png',
                  width: 30,
                  height: 85,
                ),
              ),
            ),
          ),
        ),
        Material(
          color: ifActiveSavesButton(),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: InkWell(
            hoverColor: Colors.amber[900],
            focusColor: Colors.red[900],
            splashColor: Colors.indigo,
            onTap: () {
              if (itRoute != '/') {
                Navigator.of(context).pushNamed('/');
              }
            },
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18),
              topLeft: Radius.circular(18),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  'assets/images/mic_passive.png',
                  width: 30,
                  height: 85,
                ),
              ),
            ),
          ),
        ),
        Material(
          color: ifActiveSavesButton(),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: InkWell(
            hoverColor: Colors.amber[900],
            focusColor: Colors.red[900],
            splashColor: Colors.indigo,
            onTap: () {
              if (itRoute != '/saves') {
                Navigator.of(context).pushNamed('/saves');
              }
            },
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18),
              topLeft: Radius.circular(18),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  'assets/images/list.png',
                  width: 30,
                  height: 85,
                ),
              ),
            ),
          ),
        ),
        Material(
          color: ifActiveSavesButton(),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: InkWell(
            hoverColor: Colors.amber[900],
            focusColor: Colors.red[900],
            splashColor: Colors.indigo,
            onTap: () {
              Navigator.of(context).pushNamed('/saves');
            },
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18),
              topLeft: Radius.circular(18),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  'assets/images/timer.png',
                  width: 30,
                  height: 85,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
