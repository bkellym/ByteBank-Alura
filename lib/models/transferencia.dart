class Transferencia {
  final double valor;
  final int numeroConta;
  final DateTime data;

  Transferencia(this.valor, this.numeroConta, this.data);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta, data: $data}';
  }
}
