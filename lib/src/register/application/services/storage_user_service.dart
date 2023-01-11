
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:register_code/src/register/data/repositoories/fierstore_storage_users_repository.dart';

import '../../domain/models/user.dart';

final addUserService=Provider<StorageUserService>((ref){
  return StorageUserService(FierstoreStorageUsersRepository());});
class StorageUserService {
  final FierstoreStorageUsersRepository _firestoreStorageUsersRepository;
  late final User user;

  StorageUserService(this._firestoreStorageUsersRepository);


  Future<void> AddUser({required FormGroup formGroup}) async {
user =User(imageUrl: formGroup.control('imageUrl').value,
    serviceType:  formGroup.control('serviceType').value,
    specialities:  formGroup.control('specialities').value,
    minSession:  formGroup.control('minSession').value,
    maxSession:  formGroup.control('maxSession').value,
    description:  formGroup.control('description').value,
    nameCertificate:  formGroup.control('nameCertificate').value,
    certificateUrl:  formGroup.control('certificateUrl').value);
_firestoreStorageUsersRepository.createStorageUsers(user: user);
  }
}
