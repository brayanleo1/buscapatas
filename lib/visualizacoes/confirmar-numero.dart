import 'package:buscapatas/perfil_usuario.dart';
import 'package:flutter/material.dart';
import 'package:buscapatas/componentes-interface/estilo.dart' as estilo;
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmarNumero extends StatefulWidget {
  const ConfirmarNumero({super.key, required this.title, required this.numero});

  final String title;
  final String numero;

  @override
  State<ConfirmarNumero> createState() => _ConfirmarNumeroState();
}

class _ConfirmarNumeroState extends State<ConfirmarNumero> {
  TextEditingController numeroController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Confirmar numero de celular"),
            centerTitle: true,
            backgroundColor: estilo.corsecundaria),
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20.0, 50, 40.0, 10.0),
            child: Column(
              children: <Widget>[
                Text("Insira o código de 4 dígitos \nenviado para ${widget.numero}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                  decorationThickness: 5.0,
                ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                        child: PinCodeTextField(
                            length: 4,
                            controller: numeroController,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                            onCompleted: (texto) {
                              _visualizarPerfil();
                            }, 
                            appContext: context, 
                            onChanged: (texto) {
                              //Faz nada...
                            },
                            ))
              ]),
            ),
            ElevatedButton(
              onPressed: () {
                //Reenvia o código
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(254, 254, 254, 254)),
                alignment: Alignment.centerLeft
              ), 
              child: Text("Reenviar código",
              style: TextStyle(color: estilo.corprimaria)
              )
              )
            ]
            )
            )
            );
  }

  void _visualizarPerfil() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => VisualizarPerfil(title: "Perfil")),
    );
  }
}
