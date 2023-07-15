import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fwc_album_app/app/core/exceptions/repository_exception.dart';
import 'package:fwc_album_app/app/core/rest/custom_dio.dart';
import 'package:fwc_album_app/app/models/user_model.dart';
import 'package:fwc_album_app/app/repository/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final CustomDio _dio;

  UserRepositoryImpl({required CustomDio dio}) : _dio = dio;

  @override
  Future<UserModel> getMe() async {
    try {
      final result = await _dio.auth().get('/api/me');

      return UserModel.fromMap(result.data);
    } on DioException catch (e, s) {
      log('Erro ao buscar dados do usuário logado', error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao buscar dados do usuário logado');
    }
  } 
}
