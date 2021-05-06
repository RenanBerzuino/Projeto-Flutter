import 'package:flutter/material.dart';
import 'package:projeto_flutter/models/User.dart';
import 'package:projeto_flutter/provider/userProvider.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);
  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text('telefone: ' + user.telefone),
      trailing: Container(
        width: 80,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/tela4',
                  arguments: user,
                );
              },
              icon: Icon(Icons.edit),
              color: Colors.amber,
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Usuário'),
                    content: Text(
                      'DESEJA EXCLUIR ESSE USUÁRIO?',
                    ),
                    actions: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        child: Text("Não"),
                        onPressed: () => Navigator.of(context).pop(false),
                        color: Colors.green[100],
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                          child: Text("Sim"),
                          onPressed: () => Navigator.of(context).pop(true),
                          color: Colors.red[100]),
                    ],
                  ),
                ).then((comfirmed) {
                  if (comfirmed) {
                    Provider.of<Users>(context, listen: false).remove(user);
                  }
                });
              },
              icon: Icon(Icons.delete),
              color: Colors.red[500],
            )
          ],
        ),
      ),
    );
  }
}
