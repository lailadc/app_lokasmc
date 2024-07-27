import 'package:app_lokasmc/classes/integrante.dart';
import 'package:app_lokasmc/classes/primarias/pessoa.dart';

class SubDiretora extends Loka {
  SubDiretora(
      {required Pessoa mulher,
      required String nomeColete,
      required String cargo,
      Loka? madrinha,
      required Map<String, String> observacoesEntrada})
      : super(
            mulher: mulher,
            nomeColete: nomeColete,
            cargo: cargo,
            madrinha: madrinha,
            observacoesEntrada: observacoesEntrada);

  @override
  int get grauHierarquico => 6;
}
