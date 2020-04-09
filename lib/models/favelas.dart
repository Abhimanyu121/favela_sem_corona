import 'posto_de_saude.dart';
import 'entrepreneurs.dart';

class Favela{
  Favela({
    this.nome,
    this.description,
    this.imageUrl,
    this.photoCredits,
    this.populacao,
//    https://pcrj.maps.arcgis.com/apps/MapJournal/index.html?appid=2910ea44348f49cea4ab130f2f7f8cd5&section=2,10
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


  List<Favela> favelas = [
    Favela(
      nome: 'Andarai',
      description: 'Localizado no bairro de mesmo nome, o complexo que compõe a UPP Andaraí se estende até o bairro do Grajaú e é formado pelos morros do Andaraí, Arrelia, Jamelão, Nova Divineia, João Paulo II, Juscelino Kubitschek e Vila Rica. A ocupação da área teve início na década de 1930, nas encostas da Serra do Andaraí, mas a história da ocupação da região confunde-se com a história dos bairros do entorno. Até o século XVII, toda a área era repleta de sítios e fazendas destinados à produção agrícola. Em meados do século XIX, a produção agrícola entrou em declínio e as propriedades rurais foram loteadas e vendidas. Uma das primeiras ruas abertas durante esse período foi a Borda do Mato, onde está localizada a comunidade Vila Rica, a primeira a ser ocupada na área. A UPP Andaraí é a décima primeira estado. Ela foi inaugurada em 28 de julho de 2010. UPP Social chegou oficialmente em 23 de setembro de 2011',
      populacao: 9695,
      residencias: 2693,
      casosAtivos: 4,
      imageUrl: 'images/favelaAnd'
    ),
  ];







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


