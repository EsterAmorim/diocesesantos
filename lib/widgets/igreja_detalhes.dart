import 'package:diocese/models/cidades.dart';
import 'package:flutter/material.dart';


class IgrejasDetalhes extends StatelessWidget {
  Paroquia paroquia;
  IgrejasDetalhes({Key? key, required this.paroquia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Wrap(
        children: [
          Image.network(paroquia.foto,
              height: 300,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24),
            child: Text(
              paroquia.nome,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60, left: 24),
            child: Text(
              paroquia.endereco,
            ),
          ),
        ],
      ),
    );
  }
}