
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

enum ServiceType { home, online, center }

// ignore: non_constant_identifier_names
List<String> Specialities= [
  'Pediatrics',
  'Sports',
  'WomenIshealth',
  'Cardiovascular',
  'Neurology',
  'Geriatrics',
  'Orthopedics'
];
@freezed
class User with _$User {
  const factory User({
    required String imageUrl,
    required ServiceType serviceType,
    required List< String> specialities,
    required double minSession,
    required double maxSession,
    required String description,
    required String nameCertificate,
    required String certificateUrl,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
