import 'package:diocese/models/cidades.dart';
import 'package:flutter/material.dart';


class IgrejasRepository extends ChangeNotifier {
  final List<Paroquia> _paroquia = [
    Paroquia(
      nome: 'Basílica Menor de Santo Antônio do Embaré',
      endereco: 'Av. Bartholomeu de Gusmão, 32 - Embaré, Santos - SP, 11045-400',
      horario: "Domingo: 8h, 9h30, 11h, 18h e 19h30,Segunda-feira: 7h, Terça-feira: 7h, 9h, 16h e 19h30, Quarta-feira: 7h e 19h30, Quinta-feira: 7h e 19h30, Sexta-feira: 7h, Sábado: 7h e 20h",
      foto:
      'https://images.mnstatic.com/c5/f7/c5f7e5ad9dde0351acde64be4896dfc6.jpg?quality=75&format=pjpg&fit=crop&width=980&height=880&aspect_ratio=980:880',
      latitude: -23.97413672340873,
      longitude: -46.3200272303262,
    ),
    Paroquia(
      nome: 'Paróquia Nossa Senhora do Rosário - Catedral',
      endereco: 'Praça Patriarca José Bonifácio, S/N - Centro, Santos - SP, 11013-910',
      horario: "Segunda, Quarta, Quinta e Sexta-Feira: 17h00, Domingo: 9h00 e 18h00",
      foto:
      'https://th.bing.com/th/id/OIP.2TVCwrq6KEstpP1aGihszAHaE6?rs=1&pid=ImgDetMain',
      latitude: -23.9366886085234,
      longitude: -46.32438400517257,
    ),

    Paroquia(
      nome: 'Igreja do Convento Nossa Senhora do Carmo',
      endereco: 'Pr. Barão do Rio Branco, 16 - Centro, Santos - SP, 11010-040',
      horario: "Segunda a Sexta-Feira: 7h30, 12h30 e 18h,  Sábado: 7h30 e 17h, Domingo: 8h, 11h, 18hs",
      foto:
      'https://carmelitas.org.br/wp-content/uploads/2021/05/9.-SP-Santos-conjunto-do-carmo.jpg',
      latitude: -23.932657412261257,
      longitude:  -46.327092588427654,
    ),

    Paroquia(
      nome: 'Paróquia Imaculado Coração de Maria',
      endereco: 'Av. Ana Costa, 74 - Vila Matias, Santos - SP, 11060-000',
      horario: "Segunda a Sexta-Feira: 7h30, 19h , (Terça-Feira APENAS MISSA DAS 7:30),Quinta-Feira (MISSA DE SANTO EXPEDITO): 16h,Sábado: 16h, Domingo: 7h30, 9h, 17h e 19h",
      foto:
      'https://cdn.maesqueorampelosfilhos.com/wp-content/uploads/2018/08/IMG-20190403-WA0067-2.jpg',
      latitude: -23.946428297994856,
      longitude: -46.330571405783324,
    ),
    Paroquia(
      nome: 'Paróquia Jesus Cristo Crucificado',
      endereco: 'Av. Rangel Pestana, 397 - Vila Matias, Santos - SP, 11013-551',
      horario: "Quinta,  Sexta-Feira e Sábado: 18h30, Domingo: 8h e 18h30",
      foto:
      'https://diocesedesantos.com.br/images/paroquias/jesus_crucificado.jpg',
      latitude: -23.94182642802636,
      longitude: -46.33943505129082,
    ),

    Paroquia(
      nome: 'PARÓQUIA NOSSA SENHORA DO CARMO',
      endereco: 'R. Dr. Egydio Martins, 182 - Ponta da Praia, Santos - SP, 11030-160',
      horario: "Sábado: 16h30,  Domingo: 9h, 18h30, Primeira Sexta-feira do mês: 16h (Sagrado Coração de Jesus)",
      foto:
      'https://diocesedesantos.com.br/images/paroquias/nossa_senhora_do_carmo_sts.jpg',
      latitude: -23.98428774573691,
      longitude: -46.29857809140275,
    ),
  ];

  List<Paroquia> get paroquia => _paroquia;
}