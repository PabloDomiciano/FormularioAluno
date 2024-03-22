import 'package:flutter/material.dart';
import 'package:flutter_application_1/resposta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário de Aluno',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentForm(),
    );
  }
}

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();

  String _nome = '';
  String _email = '';
  String _numeroTelefone = '';
  String _ra = '';
  String _rg = '';
  String _cpf = '';
  String _curso = '';
  String _anoCurso = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Aluno'),
      ),
      body: Padding(
        padding: EdgeInsets.all(300.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Nome',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(bottom: 10.0)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um nome';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _nome = value!;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(bottom: 10.0)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Ra',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(bottom: 10.0)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um ra';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _ra = value!;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Rg',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(bottom: 10.0)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um rg';
                        }
                        // Pode adicionar validação de email mais complexa aqui
                        return null;
                      },
                      onSaved: (value) {
                        _rg = value!;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'CPF',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(bottom: 10.0)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um cpf';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _cpf = value!;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Curso',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(bottom: 10.0)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um curso';
                        }
                        // Pode adicionar validação de email mais complexa aqui
                        return null;
                      },
                      onSaved: (value) {
                        _curso = value!;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Ano do curso',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(bottom: 10.0)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um ano do curso';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _anoCurso = value!;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    Resposta.showData(context, _nome, _email, _numeroTelefone,
                        _ra, _rg, _cpf, _curso, _anoCurso);
                  }
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
