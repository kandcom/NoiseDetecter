import 'package:flutter/material.dart';
import 'package:noise_detecter/main.dart';
import 'package:noise_detecter/screens/home.dart';
import 'package:permission_handler/permission_handler.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    String thisRoute() => ModalRoute.of(context)?.settings.name ?? '/';

    activeButtonColor(String route) {
      if (route == thisRoute()) {
        return const Color.fromARGB(255, 230, 230, 230);
      }
      return Colors.transparent;
    }

    getIsRecording() {
      return context.findAncestorStateOfType<HomeState>()?.isRecording;
    }

    void getOnStart() {
      context.findAncestorStateOfType<HomeState>()?.start();
    }

    void getOnStop() {
      context.findAncestorStateOfType<HomeState>()?.stop();
    }

    return Row(
      children: [
        Material(
          color: null,
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
          color: activeButtonColor(AllRoutes.home),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: InkWell(
            hoverColor: Colors.amber[900],
            focusColor: Colors.red[900],
            splashColor: Colors.indigo,
            onTap: () async {
              if (thisRoute() != '/') {
                Navigator.of(context).pushNamed('/');
              }
              if (thisRoute() == '/' &&
                  await Permission.microphone.status.isDenied) {
                await Permission.microphone.request();
              }
              print('Результат: ${await Permission.microphone.status}');
              print('идет запить ${getIsRecording()}');
              if (getIsRecording() == false) {
                getOnStart();
              } else if (getIsRecording() == true) {
                getOnStop();
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
          color: activeButtonColor(AllRoutes.saves),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: InkWell(
            hoverColor: Colors.amber[900],
            focusColor: Colors.red[900],
            splashColor: Colors.indigo,
            onTap: () {
              if (thisRoute() != '/saves') {
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
          color: activeButtonColor(AllRoutes.settings),
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
