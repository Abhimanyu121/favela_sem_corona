import 'posto_de_saude.dart';
import 'entrepreneurs.dart';

class Favela{
  Favela({
    this.nome,
    this.description,
    this.imageUrl,
    this.photoCredits,
    this.populacao,
    this.residencias,
    this.totalDeCasos,
    //TODO: Consegue pegar o numero de casos que vem dessa API da ARCGIS? - Ex: Andarai tem 2 casos confirmados
    // https://experience.arcgis.com/experience/38efc69787a346959c931568bd9e2cc4
    this.casosAtivos,
    this.casosRecuperados,
    this.mortes,
    this.postosdesaude,
    this.favelaResident,
  });

  String nome;
  String description;
  String imageUrl;
  String photoCredits;
  int populacao;
  int residencias;
  int totalDeCasos;
  int casosAtivos;
  int casosRecuperados;
  int mortes;
  PostoDeSaude postosdesaude;
  FavelaResident favelaResident;
}

class FavelasBrain {
  List<Favela> favelas = [
    Favela(),
  ];
}






//'Acari',
//'Cidade de Deus',
//'Parada de Lucas',
//'Rocinha',
//'Jacarezinho',
//'Santa Marta',
//'Complexo do Alemão (Penha)',
//'Complexo da Coréia (Bangu)',
//'Complexo da Coruja (Vila Laje)',
//'Complexo do Caju',
//'Complexo do Lins',
//'Complexo da Lagoinha (Caramujo)',
//'Complexo da Mangueira (São Cristóvão)',
//'Complexo de Manguinhos (Bonsucesso)',
//'Complexo da Maré (Bonsucesso)',
//'Complexo da Penha',
//'Complexo do São Carlos',
//'Complexo da Pedreira',
//'Complexo da Congonha',
//'Complexo da Serrinha',
//'Complexo do 18',
//'Complexo Menino de Deus (Rocha)',
//'Complexo do Mutuapira (Mutuá)',
//'Complexo São Carlos (Estácio)',



//Fazer mapa do COVID-19 nas favelas do município do Rio de Janeiro*
//- Total de casos, casos ativos, casos recuperados e casos fatais (Por favela) DONE
//- Percentual de casos ativos, casos recuperados e casos fatais (favela x asfalto) - Output
//- Mapa mostrará também o nível da proliferação nas favelas com classificação: alta, média e baixa (número de moradores/casos ativos)**
//
//*Mapa com data e hora da última atualização
//**Esse dado será utilizado para o tomador de decisão decidir quais favelas terão prioridade no recebimento de doações.

// Source de dados dos postos de saude: https://www.rio.rj.gov.br/web/sms/exibeconteudo?id=4206759


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


