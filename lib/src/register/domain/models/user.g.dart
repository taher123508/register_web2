// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      imageUrl: json['imageUrl'] as String,
      serviceType: $enumDecode(_$ServiceTypeEnumMap, json['serviceType']),
      specialities: (json['specialities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minSession: (json['minSession'] as num).toDouble(),
      maxSession: (json['maxSession'] as num).toDouble(),
      description: json['description'] as String,
      nameCertificate: json['nameCertificate'] as String,
      certificateUrl: json['certificateUrl'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType]!,
      'specialities': instance.specialities,
      'minSession': instance.minSession,
      'maxSession': instance.maxSession,
      'description': instance.description,
      'nameCertificate': instance.nameCertificate,
      'certificateUrl': instance.certificateUrl,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.home: 'home',
  ServiceType.online: 'online',
  ServiceType.center: 'center',
};
