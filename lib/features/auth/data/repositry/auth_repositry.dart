import 'package:chef_app/core/Errors/exceptions.dart';
import 'package:chef_app/core/database/Api/api_consumer.dart';
import 'package:chef_app/core/database/Api/endpoints.dart';
import 'package:chef_app/features/auth/data/models/login_Model.dart';
import '../../../../core/services/services_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepository {
  Future<Either<String, LoginModel>> Login({
    required String email,
    required String password,
  }) async {
    try {
      final respone = await sl<ApiConsumer>().post(
        EndPoints.chefSignin,
        data: {ApiKeys.email: email, ApiKeys.password: password},
      );
      return Right(LoginModel.fromJson(respone));
    } on ServerException catch (error) {
      return Left(error.errorModel.errorMessage);
    }
  }
}
