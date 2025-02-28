import 'package:flutter/material.dart';
import 'package:buscapatas/home.dart';

import '../perfil_usuario.dart';

class BuscapatasNavBar extends StatefulWidget {
  const BuscapatasNavBar({super.key, required this.selectedIndex});

  final int selectedIndex;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  BuscapatasNavBarState createState() => BuscapatasNavBarState();
}

class BuscapatasNavBarState extends State<BuscapatasNavBar> {
  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          return _home();
        case 2:
          return _visualizarPerfil();
        default:
      }
    });
  }

  void _home() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Home(true, title: "Cadastrar Animal")),
    );
  }

  void _visualizarPerfil() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => VisualizarPerfil(title: "Perfil")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Página inicial',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Atividade',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: const Color(0xFFE19599),
      onTap: _onItemTapped,
    );
  }
}
