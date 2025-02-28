import 'package:buscapatas/components/animal_card.dart';
import 'package:buscapatas/components/navbar.dart';
import 'package:buscapatas/perfil_usuario.dart';
import 'package:buscapatas/publico/cadastro-usuario.dart';
import 'package:buscapatas/publico/esqueceu-senha.dart';
import 'package:buscapatas/visualizacoes/contato.dart';
import 'package:flutter/material.dart';
import 'package:buscapatas/componentes-interface/estilo.dart' as estilo;

class ListaPostAvistado extends StatefulWidget {
  const ListaPostAvistado({super.key, required this.title});

  final String title;

  @override
  State<ListaPostAvistado> createState() => _ListaPostAvistado();
}

class _ListaPostAvistado extends State<ListaPostAvistado> {
  List<String> listaPostAvistados = [];
  TextEditingController buscaController = TextEditingController();

  @override
  void initState() {
    //Para pegar o valor da sessao
  }

  @override
  Widget build(BuildContext context) {
    listaPostAvistados.add("Animal 1");
    listaPostAvistados.add("Animal 2");
    listaPostAvistados.add("Animal 3");

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text("Animal Avistado"),
          centerTitle: true,
          backgroundColor: estilo.corprimaria),
      bottomNavigationBar: const BuscapatasNavBar(selectedIndex: 2),
      body: Column(children: <Widget>[
        Padding(padding: const EdgeInsets.fromLTRB(30.0, 30, 30.0, 10.0)),
        campoInput(
            "Busca", buscaController, TextInputType.name, "Informe sua Busca"),
        Expanded(
          child: ListView.builder(
              itemCount: listaPostAvistados.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    child: Card(
                  child: AnimalCard(
                    title: listaPostAvistados[index],
                    details:
                        "Gente, encontrei esse cachorrinho perto da ponte, tava virando uma lata de lixo.",
                    backgroundColor: Color(0xFFD7FFE2),
                  ),
                ));
              }),
        ),
      ]),
    );
  }

  Widget campoInput(String label, TextEditingController controller,
      TextInputType tipoCampo, String placeholder) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
        child: TextFormField(
          keyboardType: tipoCampo,
          decoration: InputDecoration(
            labelText: label,
            labelStyle:
                const TextStyle(fontSize: 21, color: estilo.corprimaria),
            hintText: placeholder,
            hintStyle: const TextStyle(
                fontSize: 14.0, color: Color.fromARGB(255, 187, 179, 179)),
            border: const OutlineInputBorder(),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          controller: controller,
        ));
  }
}
