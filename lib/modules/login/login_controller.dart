import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  Future<void>  googleSignIn() async {
    await GoogleSignIn().signOut();

    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        //'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );

    try {
      final response = await _googleSignIn.signIn();
      print("deu foi certo: ");
      print(response);
    } catch (error) {
      print(error);
    }
  }

}
