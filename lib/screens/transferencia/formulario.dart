import 'package:flutter/material.dart';

import 'package:byte_bank/components/form_campo_data.dart';
import 'package:byte_bank/components/form_campo_texto.dart';
import 'package:byte_bank/components/form_campo_texto_icon.dart';
import 'package:byte_bank/controllers/transferencia_controller.dart';
import 'package:byte_bank/models/transferencia.dart';

const _tituloAppBar = 'Criando Transferência';

const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';

const _rotuloCampoNumeroConta = 'Número da conta';
const _dicaCampoNumeroConta = '0000';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();
  final TextEditingController _controladorData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CampoTexto(
                controlador: _controladorCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
                rotulo: _rotuloCampoNumeroConta,
              ),
              CampoTextoIcon(
                dica: _dicaCampoValor,
                controlador: _controladorCampoValor,
                rotulo: _rotuloCampoValor,
                icone: Icons.monetization_on,
              ),
              DatePicker(
                dateController: _controladorData,
              ),
              ElevatedButton(
                child: const Text(
                  _textoBotaoConfirmar,
                ),
                onPressed: () => _retornaTransferencia(context),
              ),
            ],
          ),
        ));
  }

  void _retornaTransferencia(BuildContext context) {
    Transferencia? transferenciaCriada =
        TransferenciaController.criaTransferencia(_controladorCampoNumeroConta,
            _controladorCampoValor, _controladorData);

    if (transferenciaCriada != null) {
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
