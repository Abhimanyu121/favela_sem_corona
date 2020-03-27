class PostoDeSaude {

  PostoDeSaude({
    this.nome,
    this.endereco,
    this.leitosDisponiveis,
    this.testesDisponiveis,
    this.testesEmFalta,
    this.respiradoresEmFalta,
    this.horariosDeFuncionamento,
    this.totalDeMedicos});

  String nome;
  String endereco;
  int leitosDisponiveis;
  int testesDisponiveis;
  int testesEmFalta;
  int respiradoresEmFalta;
  List<String> horariosDeFuncionamento;
  int totalDeMedicos;
}
