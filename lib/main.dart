import 'package:flutter/material.dart';

import 'logic/welcome.dart';
import 'ui/theme.dart';
import 'ui/pages/home.dart';
import 'ui/pages/oll2look.dart';
import 'ui/pages/oll.dart';
import 'ui/pages/pll2look.dart';
import 'ui/pages/pll.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  makeSystemNavigationTransparent();
  await welcome();
  runApp(const LearnCFOPApp());
}

class LearnCFOPApp extends StatefulWidget {
  const LearnCFOPApp({super.key});

  @override
  State<LearnCFOPApp> createState() => _LearnCFOPAppState();
}

class _LearnCFOPAppState extends State<LearnCFOPApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      home: Scaffold(
        body: [
          const Home(),
          const OLL2Look(),
          const OLL(),
          const PLL2Look(),
          const PLL()
        ][currentPageIndex],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) =>
              setState(() => currentPageIndex = index),
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.keyboard_double_arrow_up),
              label: "OLL2Look",
            ),
            NavigationDestination(
              icon: Icon(Icons.keyboard_arrow_up),
              label: "OLL",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.sync,
                size: 22,
              ),
              label: "PLL2Look",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.replay,
                size: 22,
              ),
              label: "PLL",
            ),
          ],
        ),
      ),
    );
  }
}
