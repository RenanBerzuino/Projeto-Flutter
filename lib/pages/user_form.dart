import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_flutter/models/User.dart';
import 'package:projeto_flutter/provider/userProvider.dart';
import 'package:provider/provider.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(User user) {
    if (user != null) {
      _formData['id'] = user.id;
      _formData['name'] = user.name;
      _formData['telefone'] = user.telefone;
      _formData['email'] = user.email;
      _formData['cnpj'] = user.cnpj;
      _formData['avatarUrl'] = user.avatarUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context).settings.arguments;
    _loadFormData(user);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Cadastro de Cliente'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              final isValid = _form.currentState.validate();
              if (isValid) {
                _form.currentState.save();
                Provider.of<Users>(context, listen: false).put(
                  User(
                    id: _formData['id'],
                    cnpj: _formData['cnpj'],
                    name: _formData['name'],
                    email: _formData['email'],
                    telefone: _formData['telefone'],
                    avatarUrl: _formData['avatarUrl'],
                  ),
                );
                Navigator.of(context).pop();
              }
            },
            icon: Icon(Icons.save),
          )
        ],
      ),
      body: Container(
        color: Color(0xff00003D),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: 25,
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 450,
          height: 450,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey[200]),
          child: Form(
            key: _form,
            child: ListView(
              children: [
                Column(
                  children: <Widget>[
                    TextFormField(
                      initialValue: _formData['name'],
                      decoration: InputDecoration(labelText: 'Nome'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'É Necessario ter um nome';
                        }
                        return null;
                      },
                      onSaved: (value) => _formData['name'] = value,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      initialValue: _formData['telefone'],
                      decoration: InputDecoration(labelText: 'Telefone'),
                      onSaved: (value) => _formData['telefone'] = value,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      initialValue: _formData['email'],
                      decoration: InputDecoration(labelText: 'Email'),
                      onSaved: (value) => _formData['email'] = value,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      initialValue: _formData['cnpj'],
                      decoration: InputDecoration(labelText: 'CNPJ'),
                      onSaved: (value) => _formData['cnpj'] = value,
                    ),
                    TextFormField(
                      initialValue: _formData['avatarUrl'],
                      decoration: InputDecoration(labelText: 'Url_Avatar'),
                      onSaved: (value) => _formData['avatarUrl'] = value,
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Salvar', style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          final isValid = _form.currentState.validate();
                          if (isValid) {
                            _form.currentState.save();
                            Provider.of<Users>(context, listen: false).put(
                              User(
                                id: _formData['id'],
                                telefone: _formData['telefone'],
                                name: _formData['name'],
                                email: _formData['email'],
                                cnpj: _formData['cnpj'],
                                avatarUrl: _formData['avatarUrl'],
                              ),
                            );
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
