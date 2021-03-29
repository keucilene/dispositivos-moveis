import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Lista de Usuários',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.person_add_alt_1_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM
                  );
                }),
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (context, index) => UserTile(
            users.byIndex(index),
          ),
        ));
  }
}
