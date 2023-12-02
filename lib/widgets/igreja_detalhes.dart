import 'package:diocese/models/cidades.dart';
import 'package:flutter/material.dart';


class IgrejasDetalhes extends StatelessWidget {
  Paroquia paroquia;
  IgrejasDetalhes({Key? key, required this.paroquia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          Image.network(paroquia.foto,
              height: 250,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 24),
            child: Text(
              paroquia.nome,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 60, left: 24),
            child: Text(
              paroquia.endereco,
            ),
          ),
        ],
      ),
    );
  }
}