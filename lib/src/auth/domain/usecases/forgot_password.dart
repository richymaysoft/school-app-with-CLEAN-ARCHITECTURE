import 'package:school_app/core/usecases/usecases.dart';
import 'package:school_app/core/utils/typedefs.dart';
import 'package:school_app/src/auth/domain/repos/auth_repos.dart';

class SignIn extends UsecaseWithParam<void, String> {
  SignIn(this._authRepos);
  final AuthRepos _authRepos;

  @override
  ResultFuture<void> call(String params) async =>
      _authRepos.forgotPassword(email: params);
}