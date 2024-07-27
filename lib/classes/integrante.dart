import 'package:app_lokasmc/classes/primarias/pessoa.dart';

class Loka {
  final Pessoa mulher;
  String nomeColete;
  String cargo;
  Loka? madrinha;
  final Map<String, String> observacoesEntrada;
  final List<String> observacoesIntegrante = [];
  var grauHierarquico = 11;
  var ativa = true;

  Loka(
      {required this.mulher,
      required this.nomeColete,
      required this.cargo,
      this.madrinha,
      required this.observacoesEntrada});

  String gerarBoleto() => "link";
}
