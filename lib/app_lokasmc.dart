import 'package:app_lokasmc/classes/integrante.dart';
import 'package:app_lokasmc/classes/primarias/pessoa.dart';

var cep = CEP(cep: "12.345-678");
var endereco = Endereco(cep: cep);
var dataNascimento = DateTime(1997, 11, 2);
var mulher = Pessoa(
    nomeCompleto: "Jardeane",
    dataNascimento: dataNascimento,
    sexo: "Feminino",
    cpf: "234.567.891-11",
    rg: "11109876543",
    endereco: endereco);
var jade = Loka(
    mulher: mulher,
    nomeColete: "Jade",
    cargo: "Regional",
    observacoesEntrada: {
      "Entrada": "04/08/2023",
      "Outros": "Ex-Minerva/Abutrina"
    });

var bdLokas = <Loka>[jade];
var bdExpulsas = <Pessoa>[];

List<Loka> acessarLokas() => bdLokas;
List<Pessoa> acessarEx() => bdExpulsas;
