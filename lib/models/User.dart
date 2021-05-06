import 'package:flutter/material.dart';

class User {
  final String id;
  final String cnpj;
  final String name;
  final String email;
  final String telefone;
  final String avatarUrl;

  const User({
    this.id,
    @required this.cnpj,
    @required this.name,
    @required this.email,
    @required this.telefone,
    this.avatarUrl,
  });
}
