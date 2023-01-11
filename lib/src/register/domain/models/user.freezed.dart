// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get imageUrl => throw _privateConstructorUsedError;
  ServiceType get serviceType => throw _privateConstructorUsedError;
  List<String> get specialities => throw _privateConstructorUsedError;
  double get minSession => throw _privateConstructorUsedError;
  double get maxSession => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get nameCertificate => throw _privateConstructorUsedError;
  String get certificateUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String imageUrl,
      ServiceType serviceType,
      List<String> specialities,
      double minSession,
      double maxSession,
      String description,
      String nameCertificate,
      String certificateUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? serviceType = null,
    Object? specialities = null,
    Object? minSession = null,
    Object? maxSession = null,
    Object? description = null,
    Object? nameCertificate = null,
    Object? certificateUrl = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      specialities: null == specialities
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minSession: null == minSession
          ? _value.minSession
          : minSession // ignore: cast_nullable_to_non_nullable
              as double,
      maxSession: null == maxSession
          ? _value.maxSession
          : maxSession // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      nameCertificate: null == nameCertificate
          ? _value.nameCertificate
          : nameCertificate // ignore: cast_nullable_to_non_nullable
              as String,
      certificateUrl: null == certificateUrl
          ? _value.certificateUrl
          : certificateUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageUrl,
      ServiceType serviceType,
      List<String> specialities,
      double minSession,
      double maxSession,
      String description,
      String nameCertificate,
      String certificateUrl});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? serviceType = null,
    Object? specialities = null,
    Object? minSession = null,
    Object? maxSession = null,
    Object? description = null,
    Object? nameCertificate = null,
    Object? certificateUrl = null,
  }) {
    return _then(_$_User(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      specialities: null == specialities
          ? _value._specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minSession: null == minSession
          ? _value.minSession
          : minSession // ignore: cast_nullable_to_non_nullable
              as double,
      maxSession: null == maxSession
          ? _value.maxSession
          : maxSession // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      nameCertificate: null == nameCertificate
          ? _value.nameCertificate
          : nameCertificate // ignore: cast_nullable_to_non_nullable
              as String,
      certificateUrl: null == certificateUrl
          ? _value.certificateUrl
          : certificateUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {required this.imageUrl,
      required this.serviceType,
      required final List<String> specialities,
      required this.minSession,
      required this.maxSession,
      required this.description,
      required this.nameCertificate,
      required this.certificateUrl})
      : _specialities = specialities;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String imageUrl;
  @override
  final ServiceType serviceType;
  final List<String> _specialities;
  @override
  List<String> get specialities {
    if (_specialities is EqualUnmodifiableListView) return _specialities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialities);
  }

  @override
  final double minSession;
  @override
  final double maxSession;
  @override
  final String description;
  @override
  final String nameCertificate;
  @override
  final String certificateUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(imageUrl: $imageUrl, serviceType: $serviceType, specialities: $specialities, minSession: $minSession, maxSession: $maxSession, description: $description, nameCertificate: $nameCertificate, certificateUrl: $certificateUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('serviceType', serviceType))
      ..add(DiagnosticsProperty('specialities', specialities))
      ..add(DiagnosticsProperty('minSession', minSession))
      ..add(DiagnosticsProperty('maxSession', maxSession))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('nameCertificate', nameCertificate))
      ..add(DiagnosticsProperty('certificateUrl', certificateUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            const DeepCollectionEquality()
                .equals(other._specialities, _specialities) &&
            (identical(other.minSession, minSession) ||
                other.minSession == minSession) &&
            (identical(other.maxSession, maxSession) ||
                other.maxSession == maxSession) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.nameCertificate, nameCertificate) ||
                other.nameCertificate == nameCertificate) &&
            (identical(other.certificateUrl, certificateUrl) ||
                other.certificateUrl == certificateUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageUrl,
      serviceType,
      const DeepCollectionEquality().hash(_specialities),
      minSession,
      maxSession,
      description,
      nameCertificate,
      certificateUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String imageUrl,
      required final ServiceType serviceType,
      required final List<String> specialities,
      required final double minSession,
      required final double maxSession,
      required final String description,
      required final String nameCertificate,
      required final String certificateUrl}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get imageUrl;
  @override
  ServiceType get serviceType;
  @override
  List<String> get specialities;
  @override
  double get minSession;
  @override
  double get maxSession;
  @override
  String get description;
  @override
  String get nameCertificate;
  @override
  String get certificateUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
