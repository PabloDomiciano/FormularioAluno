import 'package:flutter/material.dart';

class Resposta {
  static void showData(
    BuildContext context,
    String nome,
    String email,
    String numeroTelefone,
    String ra,
    String rg,
    String cpf,
    String curso,
    String anoCurso,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Dados do Aluno'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Nome: $nome'),
              Text('Email: $email'),
              Text('Telefone: $numeroTelefone'),
              Text('RA: $ra'),
              Text('RG: $rg'),
              Text('CPF: $cpf'),
              Text('Curso: $curso'),
              Text('Ano do Curso: $anoCurso'),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fechar'),
            ),
          ],
        );
      },
    );
  }
}
