import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_signin_ii_example/page/home_page.dart';
import 'package:google_signin_ii_example/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'MainPage';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData.dark().copyWith(accentColor: Colors.indigo),
          home: HomePage(),
        ),
      );
}
