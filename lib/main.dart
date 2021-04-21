import 'package:app_cr/perfil/routes/routes.dart';
import 'package:app_cr/perfil/views/perfil_list.dart';
import 'package:app_cr/perfil/views/user_form.dart';
import 'package:app_cr/provider/perfis.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return MultiProvider( providers: [
       ChangeNotifierProvider(
       create: (context) =>Perfis(),
    )
    ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PerfilList(),
        routes: {
          AppRoutes.HOME:(_) => PerfilList(),
          AppRoutes.USER_FORM:(_)=> UserForm()
        },
      ),
    );
  }
}
