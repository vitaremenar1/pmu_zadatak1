import 'package:flutter/material.dart';
import 'popis_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  // Lista ekrana (mora imati minimalno 2 ekrana da odgovara broju destinacija)
  static const _screens = <Widget>[
    PopisEkran(),
    Center(child: Text('Korisnici')), // Možeš zamijeniti svojim ekranom
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (index) => setState(() {
          _index = index;
        }),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.article),
            label: 'Objave',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Korisnici',
          ),
        ],
      ),
    );
  }
}