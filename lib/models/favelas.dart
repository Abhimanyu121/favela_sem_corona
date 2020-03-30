import 'package:google_maps_flutter/google_maps_flutter.dart';

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
    nome: 'UPA Rocinha',
    endereco: 'Estrada da Gávea, 520 (curva do S) - Rocinha',
    telefone: '3322-7190',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Alemão',
    endereco: 'Estrada Itararé, 951 - Ramos',
    telefone: '3881-1656',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Manguinhos',
    endereco: 'Av. Dom Helder Câmara, 1390 - Manguinhos',
    telefone: '2332-2405',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Engenho de Dentro',
    endereco: 'Rua Bernardo, s/n - Engenho de Dentro',
    telefone: '2592-0502',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Madureira',
    endereco: 'Praça dos Lavradores, s/n - Campinho',
    telefone: '3358-2994',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Costa Barros',
    endereco: 'Estrada Botafogo, s/n - Costa Barros',
    telefone: '2508-6990',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Rocha Miranda',
    endereco: 'Estrada do Barro Vermelho, s/n - Rocha Miranda',
    telefone: '3015-6259',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Cidade de Deus',
    endereco: 'Rua Edgar Werneck, s/n - Cidade de Deus',
    telefone: '2232-3173',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Vila Kennedy',
    endereco: 'Praça Dolomitas, s/n - Vila Kennedy',
    telefone: '2405-0303 / 2405-0447',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Senador Camará',
    endereco: 'Av. Santa Cruz, 6486 - Senador Camará',
    telefone: '3839-3688 / 3839-5847',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Magalhães Bastos',
    endereco: 'Estrada Manoel Nogueira de Sá c/ Rua Professor José Rodrigues s/n - Magalhães Bastos',
    telefone: '3550-7080',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Sepetiba',
    endereco: 'Rua José Fernandes, s/n - Alagados - Sepetiba',
    telefone: '3404-7250',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Santa Cruz',
    endereco: 'Avenida João XXIII, s/n (em frente ao CIEP Papa João XXIII) - Santa Cruz',
    telefone: '2416-5719',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'UPA Paciência',
    endereco: 'Estrada Santa Eugênia, s/n - Jardim 7 de Abril - Paciência',
    telefone: '3406-7697 / 3426-4410',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'CER Centro (Souza Aguiar)',
    endereco: 'Rua Frei Caneca, s/n (ao lado do n 52) - Centro',
    telefone: '2507-1311',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'CER Leblon (Miguel Couto)',
    endereco: 'Rua Mário Ribeiro, 1080 - Leblon',
    telefone: '2529-9200',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'CER Barra da Tijuca (Lourenço Jorge)',
    endereco: 'Av. Ayrton Senna, 2000 - Barra da Tijuca',
    telefone: '3870-3716',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'CER Ilha do Governador (Evandro Freire)',
    endereco: 'Estrada do Galeão, 2920 - Ilha do Governador',
    telefone: '3353-6179',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'CER Pedro II (Pedro II)',
    endereco: 'Rua do Prado, 325 Santa Cruz',
    telefone: '2419-4792',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'CER Realengo (Albert Schweitzer)',
    endereco: 'Rua Nilópolis, 239 - Realengo',
    telefone: 'nao informado',
    horariosDeFuncionamento: ['24 horas'],
  ),
  PostoDeSaude(
    nome: 'CER Campo Grande (Rocha Faria)',
    endereco: 'Av. Cesário de Melo, 3215 - Campo Grande',
    telefone: '2233-6791 / 2233-6797',
    horariosDeFuncionamento: ['24 horas'],
  ),

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


Marker gramercyMarker = Marker(
  markerId: MarkerId('gramercy'),
  position: LatLng(40.738380, -73.988426),
  infoWindow: InfoWindow(title: 'Gramercy Tavern'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
);

Marker bernardinMarker = Marker(
  markerId: MarkerId('bernardin'),
  position: LatLng(40.761421, -73.981667),
  infoWindow: InfoWindow(title: 'Le Bernardin'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet,),
);

Marker blueMarker = Marker(
  markerId: MarkerId('bluehill'),
  position: LatLng(40.732128, -73.999619),
  infoWindow: InfoWindow(title: 'Blue Hill'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet,),
);



// Source de dados dos postos de saude: https://www.rio.rj.gov.br/web/sms/exibeconteudo?id=4206759



