import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  const AppFirebase({Key? key}) : super(key: key);

  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Material(
              child: Center(
                  child: Text(
            "Erro ao Iniciar o Firebase. Contate o Suporte!",
            textDirection: TextDirection.ltr,
          )));
        } else if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          return Material(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
