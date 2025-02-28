import 'package:buscapatas/components/campo-texto.dart';
import 'package:buscapatas/publico/esqueceu-senha.dart';
import 'package:buscapatas/visualizacoes/editar-numero.dart';
import 'package:flutter/material.dart';
import 'package:buscapatas/componentes-interface/estilo.dart' as estilo;
import 'package:flutter/services.dart';

class EditarPerfil extends StatefulWidget {
  const EditarPerfil({super.key, required this.title});

  final String title;

  @override
  State<EditarPerfil> createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {

  // TextEditingController nomeController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController telefoneController = TextEditingController();
  // TextEditingController usuarioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              title: const Text("Editar Perfil",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              foregroundColor: Colors.white,
              backgroundColor: estilo.corprimaria),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('imagens/homem.jpg'),
                    ),
                    Positioned(bottom: 0, right: 4,child: construirBotaoEdicao()),
                  ],
                ),
              ),
              const CampoTexto(label: 'Nome', text: 'Luan Gustavo Cláudio dos Santos'),
              const CampoTexto(label: 'Usuário', text: 'Luan Gustavo'),
              const CampoTexto(label: 'Email', text: 'luang@gmail.com'),
              const CampoTexto(label: 'Telefone', text: '+55 (84) 98998-9236'),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        estilo.corprimaria),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EsqueceuSenha(
                              title: 'Mudar senha')),
                    );
                  },
                  child: const Text(
                    "Mudar Senha",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                )),
                const SizedBox(height: 20),
                SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        estilo.corprimaria),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Salvar",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                )),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          estilo.corprimaria),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditarNumero(
                                title: 'Mudar numero')),
                      );
                    },
                    child: const Text(
                      "Mudar Numero",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget construirBotaoEdicao() => construirCirculo(
        color: Colors.white,
        all: 3,
        child: construirCirculo(
          color: estilo.corprimaria,
          all: 8,
          child: const Icon(
            Icons.add_a_photo,
            color: Colors.white,
            size: 15,
          ),
        ),
      );

  Widget construirCirculo({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );

}