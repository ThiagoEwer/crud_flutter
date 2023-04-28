import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'crud/provider/users.dart';
import 'crud/routes/app_routes.dart';
import 'crud/views/user_form.dart';
import 'crud/views/user_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //o material está envolvido com o Provider Users, para atualizar todo o material.
    // se não funcionar, colocar o Provider apenas no APP raiz após o login, no caso, o PainelGeral.
    return ChangeNotifierProvider(
      create: (context) => Users(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      //home desabilitado para usar o routes.  
     // home: const UserList(),
        routes: {
          AppRoutes.HOME:(context) => const UserList(),
          AppRoutes.USER_FORM:(context) => const UserForm()
        }
      ),
    );
  }
}