import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(
              Icons.person_outline_rounded,
              color: Colors.green.shade100,
            ),
          )
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.edit_outlined),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.USER_FORM,
                      arguments: user,
                    );
                  }),
              IconButton(
                  icon: Icon(Icons.delete_outline_rounded),
                  color: Colors.redAccent,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Excluir Usuário'),
                        content:
                            Text('Tem certeza que desejas excluir o usuário?'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Não'),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                          FlatButton(
                            child: Text('Sim'),
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ],
                      ),
                    ).then((confirmed) {
                      if (confirmed) {
                        Provider.of<Users>(context, listen: false).remove(user);
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
