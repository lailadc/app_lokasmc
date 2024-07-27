import 'package:app_lokasmc/app_lokasmc.dart';
import 'package:app_lokasmc/classes/integrante.dart';
import 'package:app_lokasmc/classes/primarias/pessoa.dart';

void main() {
  final integrantes = acessarLokas();
  var cep = CEP(cep: "12.345-678");
  var endereco = Endereco(cep: cep);
  var dataNascimento = DateTime(1999, 11, 2);
  var mulher = Pessoa(
      nomeCompleto: "Rebeca Laila",
      dataNascimento: dataNascimento,
      sexo: "Feminino",
      cpf: "123.456.789-10",
      rg: "10987654321",
      endereco: endereco);
  var loka = Loka(
      mulher: mulher,
      nomeColete: "Esquecida",
      cargo: "Camiseta",
      madrinha: integrantes[0],
      observacoesEntrada: {
        "Entrada": "09/07/2024",
        "Outros":
            "Mulher do insano Herege - div. Leste SJC - Regional Vale do Paraíba"
      });
  integrantes.add(loka);

  print(integrantes[1].nomeColete);
}
