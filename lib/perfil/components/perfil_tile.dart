import 'package:app_cr/perfil/routes/routes.dart';
import 'package:app_cr/perfil/user_perfil.dart';
import 'package:flutter/material.dart';

class PerfilTile extends StatelessWidget {

  final Perfil user;

  const PerfilTile(this.user);
  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
    ? CircleAvatar(child: Icon (Icons.person))
    : CircleAvatar (backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar ,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget> [
            IconButton(
                icon: Icon(Icons.edit,
                color: Colors.black,),
            onPressed: (){
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
                arguments: user,
              );
            },
            ),
            IconButton(
              icon: Icon (Icons.delete,
              color: Colors.red,),
              onPressed: (){}
           ),

          ],

        ),
      ),

    );
  }


}
