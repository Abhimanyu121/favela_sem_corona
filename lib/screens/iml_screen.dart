import 'package:flutter/material.dart';
import 'package:favelasemcorona/constants.dart';

void main() => runApp(MaterialApp(home: IMLScreen()));

class IMLScreen extends StatefulWidget {
  static const String id = 'iml_screen';

  @override
  _IMLScreenState createState() => _IMLScreenState();
}

class _IMLScreenState extends State<IMLScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('IML do Rio de Janeiro'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.red,
                      Colors.redAccent,
                      kDharma4,
                      kDharma5,
                    ]
                )
            ),
          ),
        ),
        body: Text('Gratuidade de Serviços Funerários')
    );
  }
}


//Texto para ser colocado:
//
//Sepultamento Gratuito - Orientações
//Referente a sua consulta sobre a gratuidade de sepultamento,  informamos que houve recomendação da ANVISA sobre o assunto e que a Defensoria Pública emitirá recomendação às concessionárias e aos Municípios reforçando a orientação de que a gratuidade do sepultamento permanece com as concessionárias e com os municípios
//
//
//Portanto, não é necessário de ofício da Defensoria para a obtenção da gratuidade para sepultamento, pois a análise da solicitação permanece com as concessionárias do serviço e com os municípios.
//
//Caso a gratuidade seja negada o assistido pode entrar em contato conosco, para ser encaminhado ao serviço de urgência da Defensoria Pública.
//
//
//Atualmente existem duas novas empresas (consórcios) administrando os cemitérios públicos do RJ, a RIO PAX e a REVIVER.
//
//CONSÓRCIO RIO PAX
//Administra os cemitérios do Lote 2 e tem serviço funerário próprio.
//Campo Grande
//Inhaúma
//Irajá
//Jacarepaguá
//Piabas
//São João Batista
//
//
//CONSÓRCIO REVIVER
//Administra os cemitérios públicos do Lote 1 e também possui serviço funerário para atendimento ao público.
//Ilha do Governador
//Paquetá
//Realengo
//Ricardo de Albuquerque
//São Francisco Xavier
//Santa Cruz
//Guaratiba
//Crematório São Francisco Xavier
//
//OBS: O Pedido pode ser feito completo, ou seja: GRATUIDADE PARA SERVIÇO FUNERÁRIO (caixão, remoção) e PARA O SERVIÇO CEMITERIAL (aluguel de capela, de jazigo e demais tarifas cemiteriais).
//
//
//Documentos Necessários (ORIGINAL E CÓPIA) para pleitar a gratuidade de sepultamento
//
//- Certidão de Nascimento ou Casamento (Caso o usuário seja divorciado ou separado judicialmente, deverá apresentar a certidão de casamento com a averbação)
//- RG ou Carteira Profissional
//- CPF
//
//- Comprovante de renda para que seja verificado o direito à gratuidade de justiça – Art. 34 da Deliberação CS 88/2012
//
//
//São documentos hábeis a comprovação de renda, a escolha do assistido:
//I - Contracheque; ou
//II - Carteira Profissional; ou
//III - Declaração de próprio punho do empregador ou do sindicato profissional, devidamente subscrita; e
//Para comprovar sua condição de hipossuficiente, além da apresentação de um dos documentos acima mencionados, o assistido deverá, obrigatoriamente, apresentar cópia de sua última declaração de Imposto de Renda, caso a tenha entregue.
//Obs: a obrigatoriedade da apresentação da última Declaração do Imposto de Renda foi estabelecida após realização de reunião da Coordenação dos Núcleos com o Defensores Públicos dos Núcleos de 1º atendimento (email da Dra. Fátima Saraiva do dia 24/01/2014)
//
//- Comprovante de residência em seu nome – Art. 37 § 2° da Deliberação CS 88/2012
//
//
//São documentos hábeis a comprovação do domicílio, a escolha do assistido:
//I - Contas emitidas por concessionários de serviços públicos datadas de até três meses;
//II - Qualquer correspondência de empresas privadas e/ou órgãos públicos, datada de até três meses;
//III - Declaração da Associação de Moradores datada de até três meses;
//IV - Contratos de aluguel vigente;
//V - Declaração e/ou com cópia de identidade do declarante, desde que acompanhada de um dos documentos previstos nas alíneas anteriores exigidos pelo Defensor Público, que avaliará os casos excepcionais, decidindo sobre a viabilidade do atendimento.
//
//- Identidade do falecido
//
//- CPF do falecido
//
//- Comprovante de residência do falecido
//
//- Declaração de óbito
//
//
//Atenciosamente,
//
//    Central de Relacionamento com o Cidadão – CRC
//Defensoria Pública do Estado do Rio de Janeiro
//Tel: 129
//
