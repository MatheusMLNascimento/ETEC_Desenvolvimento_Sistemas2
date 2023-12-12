import 'package:app_imc/models/user.dart';
import 'package:app_imc/repositories/user_repository.dart';
import 'package:app_imc/services/prefs_service.dart';

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
