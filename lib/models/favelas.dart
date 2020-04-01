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



//Fazer mapa do COVID-19 nas favelas do município do Rio de Janeiro*
//- Total de casos, casos ativos, casos recuperados e casos fatais (Por favela) DONE
//- Percentual de casos ativos, casos recuperados e casos fatais (favela x asfalto) - Output
//- Mapa mostrará também o nível da proliferação nas favelas com classificação: alta, média e baixa (número de moradores/casos ativos)**
//
//*Mapa com data e hora da última atualização
//**Esse dado será utilizado para o tomador de decisão decidir quais favelas terão prioridade no recebimento de doações.

// TODO: Duvida Bruno: Consigo colocar esses markers como itens dentro da Classe, Postos de Saude?
// ou devo criar um Marker para cada posto de saude?




// Source de dados dos postos de saude: https://www.rio.rj.gov.br/web/sms/exibeconteudo?id=4206759



