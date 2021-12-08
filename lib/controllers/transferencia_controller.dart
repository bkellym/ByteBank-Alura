import 'package:byte_bank/models/transferencia.dart';
import 'package:flutter/widgets.dart';

class TransferenciaController {
  static Transferencia? criaTransferencia(
    TextEditingController _numeroConta,
    TextEditingController _valor,
    TextEditingController _data,
  ) {
    final int? numeroConta = int.tryParse(_numeroConta.text);
    final double? valor = double.tryParse(_valor.text);
    final DateTime? data = DateTime.tryParse(_data.text);
    if (numeroConta != null && valor != null && data != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta, data);
      return transferenciaCriada;
    }
  }
}
