import 'package:buscapatas/cadastros/cadastro-post.dart';
import 'package:flutter/material.dart';
import 'package:buscapatas/home.dart';
import 'package:material_color_generator/material_color_generator.dart';
import 'package:buscapatas/componentes-interface/estilo.dart' as estilo;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busca Patas',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: generateMaterialColor(color: estilo.corsecundaria),
      ),
      //home: CadastroPost(title: "Cadastro de animal"),
      // home: CadastroPost(title: "Página Inicial"),
      home: Home(false, title: "Página Inicial"),
    );
  }
}
