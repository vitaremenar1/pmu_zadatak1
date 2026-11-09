import 'package:flutter/material.dart';

import 'list_screen.dart';   // Ekran s popisom postova
import 'table_screen.dart';  // Ekran s tablicom postova
import 'profile_screen.dart'; // Zamijenjeno s MapScreen (npr. korisnici ili detalji)

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  static const _screens = <Widget>[
    ListScreen(), 
    TableScreen(), 
    ProfileScreen(), // Prilagodi naziv ekrana prema potrebi
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
            icon: Icon(Icons.list), 
            label: 'Popis',
          ),
          NavigationDestination(
            icon: Icon(Icons.table_chart), 
            label: 'Tablica',
          ),
          NavigationDestination(
            icon: Icon(Icons.person), 
            label: 'Korisnici', // Primjer umjesto karte
          ),
        ],
      ),
    );
  }
}