class Pessoa {
  String nomeCompleto;
  String _cpf;
  String _rg;
  DateTime dataNascimento;
  String sexo;
  Endereco _endereco;

  Pessoa(
      {required this.nomeCompleto,
      required this.dataNascimento,
      required this.sexo,
      required String cpf,
      required String rg,
      required Endereco endereco})
      : _cpf = cpf,
        _rg = rg,
        _endereco = endereco;

  String get cpf => _cpf;
  String get rg => _rg;
  Endereco get endereco => _endereco;

  set CPF(String cpf) {
    _cpf = cpf;
  }

  set RG(String rg) {
    _rg = rg;
  }

  set endereco(Endereco end) {
    _endereco = end;
  }
}

class Endereco {
  final CEP cep;
  final int? numero;
  final String? complemento;

  Endereco({required this.cep, this.numero, this.complemento});
}

class CEP {
  final String cep;
  /*
  final String rua;
  final String cidade;
  final String estado;
  final String bairro;
  */

  CEP({required this.cep});
}
