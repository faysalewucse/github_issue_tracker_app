import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final isAuthenticated = false.obs;

  Future<void> loginWithGitHub() async {
    try {
      GithubAuthProvider githubAuthProvider = GithubAuthProvider();
      UserCredential userCredential = await FirebaseAuth.instance.signInWithProvider(githubAuthProvider);
      print(userCredential);

    } catch (e) {
      print('Error during GitHub OAuth login: $e');
    }
  }
}