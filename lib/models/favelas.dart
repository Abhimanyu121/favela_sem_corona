import 'posto_de_saude.dart';

class Favela {
  Favela({
    this.nome,
    this.populacao,
    this.totalDeCasos,
    this.casosAtivos,
    this.casosRecuperados,
    this.mortes,
    this.postosdesaude,
  });

  String nome;
  int populacao;
  int totalDeCasos;
  int casosAtivos;
  int casosRecuperados;
  int mortes;
  List<PostoDeSaude> postosdesaude;
}

class Asfalto {
  Asfalto({
    this.nomeBairro,
    this.populacao,
    this.totalDeCasos,
    this.casosAtivos,
    this.casosRecuperados,
    this.mortes,
  });

  String nomeBairro;
  int populacao;
  int totalDeCasos;
  int casosAtivos;
  int casosRecuperados;
  int mortes;
}

const List<String> favelas = [
  'Acari',
  'Cidade de Deus',
  'Parada de Lucas',
  'Rocinha',
  'Jacarezinho',
  'Santa Marta',
  'Complexo do Alemão (Penha)',
  'Complexo da Coréia (Bangu)',
  'Complexo da Coruja (Vila Laje)',
  'Complexo do Caju',
  'Complexo do Lins',
  'Complexo da Lagoinha (Caramujo)',
  'Complexo da Mangueira (São Cristóvão)',
  'Complexo de Manguinhos (Bonsucesso)',
  'Complexo da Maré (Bonsucesso)',
  'Complexo da Penha',
  'Complexo do São Carlos',
  'Complexo da Pedreira',
  'Complexo da Congonha',
  'Complexo da Serrinha',
  'Complexo do 18',
  'Complexo Menino de Deus (Rocha)',
  'Complexo do Mutuapira (Mutuá)',
  'Complexo São Carlos (Estácio)',
];

List<PostoDeSaude> postosdesaude = [
  PostoDeSaude(
    nome: 'Unidade de Saude da Cidade de Deus',
    endereco: 'Rua SemNome, 23',
    leitosDisponiveis: 2,
    testesDisponiveis: 240,
    testesEmFalta: 700,
    respiradoresEmFalta: 20,
    horariosDeFuncionamento: ['08:00am', '21:00'],
    totalDeMedicos: 5,
  ),
  PostoDeSaude(
    nome: 'Clinica da Familia Maria do Socorro Silva e Souza',
    endereco: 'Estrada da Gavea, 522',
    leitosDisponiveis: 2,
    testesDisponiveis: 240,
    testesEmFalta: 700,
    respiradoresEmFalta: 20,
    horariosDeFuncionamento: ['08:00am', '19:00'],
    totalDeMedicos: 5,
  ),
];

//Fazer mapa do COVID-19 nas favelas do município do Rio de Janeiro*
//- Total de casos, casos ativos, casos recuperados e casos fatais (Por favela) DONE
//- Percentual de casos ativos, casos recuperados e casos fatais (favela x asfalto) - Output
//- Mapa mostrará também o nível da proliferação nas favelas com classificação: alta, média e baixa (número de moradores/casos ativos)**
//
//*Mapa com data e hora da última atualização
//**Esse dado será utilizado para o tomador de decisão decidir quais favelas terão prioridade no recebimento de doações.
