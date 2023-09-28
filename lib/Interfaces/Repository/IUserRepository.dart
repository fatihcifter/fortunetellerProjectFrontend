

import 'package:fortuneteller/Models/LoginDetail.dart';
import 'package:fortuneteller/Models/User.dart';
import 'package:fortuneteller/Models/UserToken.dart';

abstract class IUserRepository {
  Future<UserToken> loginUser(LoginDetail loginDetail);
  Future<UserToken> refreshToken(UserToken userToken);
  Future<UserToken> registerUser(User user);
}
