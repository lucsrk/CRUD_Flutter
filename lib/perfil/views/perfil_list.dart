import 'package:app_cr/perfil/components/perfil_tile.dart';
import 'package:app_cr/perfil/data/dammy_perfil.dart';
import 'package:app_cr/perfil/routes/routes.dart';
import 'package:app_cr/perfil/user_perfil.dart';
import 'package:app_cr/provider/perfis.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PerfilList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  final users = Provider.of<Perfis>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Perfis"),
        actions: <Widget>[
          IconButton(
              icon: Icon (Icons.add),
              onPressed: (){
                Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                );
              }
              ),
        ],
      ),

      body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (context,i ) => PerfilTile(users.byIndex(i)),
      ),
    );
  }
}
