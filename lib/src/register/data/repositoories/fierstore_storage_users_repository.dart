import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:register_code/src/register/data/repositoories/storage_user_repository.dart';
import 'package:register_code/src/register/domain/models/user.dart';

final firestorStorageUsersRepositoryProvider =
    Provider<FierstoreStorageUsersRepository>( (ref) {
  return FierstoreStorageUsersRepository();
});

class FierstoreStorageUsersRepository implements StorageUserRepository {
  final CollectionReference _storUser = FirebaseFirestore.instance.collection("Users");

  @override
  Future<void> createStorageUsers({required User user}) async {
    await _storUser.doc().set(user.toJson()).whenComplete(() => const SnackBar(content: Text('hgfhf')));

  }
}
