class PostoDeSaude {

  PostoDeSaude({
    this.nome,
    this.endereco,
    this.telefone,
    this.horariosDeFuncionamento,
    this.lat,
    this.lng,
  });

  String nome;
  String endereco;
  String telefone;
  List<String> horariosDeFuncionamento;
  double lat;
  double lng;
  int totalDeMedicos;
}


