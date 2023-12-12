import 'package:calculadora_splash/models/user.dart';
import 'package:calculadora_splash/repositories/user_repository.dart';
import 'package:calculadora_splash/services/prefs_service.dart';

class LoginController {
  final User user;

  LoginController({required this.user});

  bool isValid() {
    if (UserRepository.isUser(user)) {
      PrefsService.save(user.email);
      return true;
    }
    return false;
  }
}
