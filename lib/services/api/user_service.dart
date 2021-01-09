import 'package:injectable/injectable.dart';

import '../../models/app_user.dart' show AppUser;
import 'base_service.dart' show BaseService;

@lazySingleton
class UserService implements BaseService<AppUser> {
  @override
  String endpoint;

  @override
  Future<List<AppUser>> fetchAll() {
    // TODO: implement fetchAll
    throw UnimplementedError();
  }

  @override
  Future<AppUser> fetchById({int id}) {
    // TODO: implement fetchById
    throw UnimplementedError();
  }

  @override
  Future<AppUser> requestCreate({AppUser model}) {
    // TODO: implement requestCreate
    throw UnimplementedError();
  }

  @override
  Future<bool> requestDeleteById({int id}) {
    // TODO: implement requestDeleteById
    throw UnimplementedError();
  }

  @override
  Future<bool> requestForceDeleteById({int id}) {
    // TODO: implement requestForceDeleteById
    throw UnimplementedError();
  }

  @override
  Future<bool> requestRestoreById({int id}) {
    // TODO: implement requestRestoreById
    throw UnimplementedError();
  }

  @override
  Future<AppUser> requestUpdate({AppUser model, int id}) {
    // TODO: implement requestUpdate
    throw UnimplementedError();
  }
}
