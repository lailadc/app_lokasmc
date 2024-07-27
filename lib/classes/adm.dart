import 'package:app_lokasmc/classes/integrante.dart';
import 'package:app_lokasmc/classes/primarias/pessoa.dart';
import 'package:app_lokasmc/app_lokasmc.dart';

class ADM extends Loka {
  ADM(
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

  void cadastrarIntegrante(Loka novaIntegrante) {
    var prosseguir = investigar(novaIntegrante.mulher);
    if (prosseguir) {
      var integrantes = acessarLokas();
      integrantes.add(novaIntegrante);
    }
  }

  bool investigar(Pessoa mulher) {
    var expulsas = acessarEx();
    var integrantes = acessarLokas();
    var integrante = pesquisarIntegrante(mulher.nomeCompleto);
    if (expulsas.contains(mulher)) {
      return false;
    } else if (integrantes.contains(integrante)) {
      return false;
    }
    return true;
  }

  Loka? pesquisarIntegrante(String pesquisa) {
    var integrantes = acessarLokas();
    for (var integrante in integrantes) {
      if (integrante.nomeColete == pesquisa) {
        return integrante;
      } else if (integrante.mulher.nomeCompleto.contains(pesquisa)) {
        return integrante;
      }
    }
    return null;
  }

  void editarDadosCadastrais(String apelido, Map<dynamic, int> campos) {
    var integrante = pesquisarIntegrante(apelido);

    if (integrante != null) {
      campos.forEach((info, campo) {
        switch (campo) {
          case 1: // nome
            integrante.mulher.nomeCompleto = info;
            break;
          case 2: // apelido
            integrante.nomeColete = info;
            break;
          case 3: // endereço
            integrante.mulher.endereco = info;
            break;
          case 4: // madrinha
            integrante.madrinha = info;
            break;
          case 5: // RG
            integrante.mulher.RG = info;
            break;
          case 6: // CPF
            integrante.mulher.CPF = info;
            break;
          case 7: // cargo
            integrante.cargo = info;
            break;
          case 8: // observações
            integrante.observacoesIntegrante.add(info);
            break;
          case _:
            print("Campo $campo não existe.");
        }
      });
    }
  }

  void afastarIntegrante(String apelido) {
    var integrante = pesquisarIntegrante(apelido);
    if (integrante != null) {
      integrante.ativa = false;
    } else {
      print("Integrante não encontrada.");
    }
  }

  void desligarIntegrante(String apelido) {
    var integrante = pesquisarIntegrante(apelido);
    if (integrante != null) {
      List expulsar = acessarEx();
      expulsar.add(integrante.mulher);
      expulsar = acessarLokas();
      expulsar.remove(integrante);
    } else {
      print("Integrante não encontrada.");
    }
  }

  String gerarBoletos(String nome) {
    var integrante = pesquisarIntegrante(nome);
    if (integrante != null) {
      return integrante.gerarBoleto();
    }
    return "Integrante não encontrada.";
  }
}
