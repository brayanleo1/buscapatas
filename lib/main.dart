//Apagar depois dos testes, está aqui só para facilitar os testes da tela
import 'package:buscapatas/cadastros/cadastro-post.dart';
import 'package:flutter/material.dart';
//Verificar a necessidade de apagar depois dos testes, se der para manter sessão pode iniciar na home em vez de login
import 'package:buscapatas/home.dart';
import 'package:material_color_generator/material_color_generator.dart';
import 'package:buscapatas/componentes-interface/estilo.dart' as estilo;
import 'package:buscapatas/publico/login.dart';
//Apagar depois dos testes, está aqui só para facilitar os testes da tela
import 'package:buscapatas/publico/nao-implementado.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busca Patas',
      theme: ThemeData(
        primarySwatch: generateMaterialColor(color: estilo.corsecundaria),
      ),
      //home: CadastroPost(title: "Cadastro de animal"),
      home: Home(true, title: "Página Inicial"),
      //home: Login(title:"Login - BuscaPatas"),
      //home: NaoImplementado(title: "Não implementado"),
    );
  }
}
