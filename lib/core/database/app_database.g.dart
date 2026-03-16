// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String> token = GeneratedColumn<String>(
    'token',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _profileImageMeta = const VerificationMeta(
    'profileImage',
  );
  @override
  late final GeneratedColumn<String> profileImage = GeneratedColumn<String>(
    'profile_image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _isLoggedInMeta = const VerificationMeta(
    'isLoggedIn',
  );
  @override
  late final GeneratedColumn<bool> isLoggedIn = GeneratedColumn<bool>(
    'is_logged_in',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_logged_in" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    email,
    phone,
    token,
    role,
    profileImage,
    isLoggedIn,
    isActive,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<User> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('token')) {
      context.handle(
        _tokenMeta,
        token.isAcceptableOrUnknown(data['token']!, _tokenMeta),
      );
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    }
    if (data.containsKey('profile_image')) {
      context.handle(
        _profileImageMeta,
        profileImage.isAcceptableOrUnknown(
          data['profile_image']!,
          _profileImageMeta,
        ),
      );
    }
    if (data.containsKey('is_logged_in')) {
      context.handle(
        _isLoggedInMeta,
        isLoggedIn.isAcceptableOrUnknown(
          data['is_logged_in']!,
          _isLoggedInMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      token: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}token'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      )!,
      profileImage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}profile_image'],
      )!,
      isLoggedIn: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_logged_in'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String token;
  final String role;
  final String profileImage;
  final bool isLoggedIn;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.token,
    required this.role,
    required this.profileImage,
    required this.isLoggedIn,
    required this.isActive,
    required this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['token'] = Variable<String>(token);
    map['role'] = Variable<String>(role);
    map['profile_image'] = Variable<String>(profileImage);
    map['is_logged_in'] = Variable<bool>(isLoggedIn);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      phone: Value(phone),
      token: Value(token),
      role: Value(role),
      profileImage: Value(profileImage),
      isLoggedIn: Value(isLoggedIn),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory User.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      token: serializer.fromJson<String>(json['token']),
      role: serializer.fromJson<String>(json['role']),
      profileImage: serializer.fromJson<String>(json['profileImage']),
      isLoggedIn: serializer.fromJson<bool>(json['isLoggedIn']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'token': serializer.toJson<String>(token),
      'role': serializer.toJson<String>(role),
      'profileImage': serializer.toJson<String>(profileImage),
      'isLoggedIn': serializer.toJson<bool>(isLoggedIn),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? token,
    String? role,
    String? profileImage,
    bool? isLoggedIn,
    bool? isActive,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => User(
    id: id ?? this.id,
    name: name ?? this.name,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    token: token ?? this.token,
    role: role ?? this.role,
    profileImage: profileImage ?? this.profileImage,
    isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      email: data.email.present ? data.email.value : this.email,
      phone: data.phone.present ? data.phone.value : this.phone,
      token: data.token.present ? data.token.value : this.token,
      role: data.role.present ? data.role.value : this.role,
      profileImage: data.profileImage.present
          ? data.profileImage.value
          : this.profileImage,
      isLoggedIn: data.isLoggedIn.present
          ? data.isLoggedIn.value
          : this.isLoggedIn,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('token: $token, ')
          ..write('role: $role, ')
          ..write('profileImage: $profileImage, ')
          ..write('isLoggedIn: $isLoggedIn, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    email,
    phone,
    token,
    role,
    profileImage,
    isLoggedIn,
    isActive,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.token == this.token &&
          other.role == this.role &&
          other.profileImage == this.profileImage &&
          other.isLoggedIn == this.isLoggedIn &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> token;
  final Value<String> role;
  final Value<String> profileImage;
  final Value<bool> isLoggedIn;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.token = const Value.absent(),
    this.role = const Value.absent(),
    this.profileImage = const Value.absent(),
    this.isLoggedIn = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.token = const Value.absent(),
    this.role = const Value.absent(),
    this.profileImage = const Value.absent(),
    this.isLoggedIn = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? token,
    Expression<String>? role,
    Expression<String>? profileImage,
    Expression<bool>? isLoggedIn,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (token != null) 'token': token,
      if (role != null) 'role': role,
      if (profileImage != null) 'profile_image': profileImage,
      if (isLoggedIn != null) 'is_logged_in': isLoggedIn,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? email,
    Value<String>? phone,
    Value<String>? token,
    Value<String>? role,
    Value<String>? profileImage,
    Value<bool>? isLoggedIn,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<int>? rowid,
  }) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      token: token ?? this.token,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (profileImage.present) {
      map['profile_image'] = Variable<String>(profileImage.value);
    }
    if (isLoggedIn.present) {
      map['is_logged_in'] = Variable<bool>(isLoggedIn.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('token: $token, ')
          ..write('role: $role, ')
          ..write('profileImage: $profileImage, ')
          ..write('isLoggedIn: $isLoggedIn, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AppSettingsTable extends AppSettings
    with TableInfo<$AppSettingsTable, AppSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _isDarkModeMeta = const VerificationMeta(
    'isDarkMode',
  );
  @override
  late final GeneratedColumn<bool> isDarkMode = GeneratedColumn<bool>(
    'is_dark_mode',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_dark_mode" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isAppLockEnabledMeta = const VerificationMeta(
    'isAppLockEnabled',
  );
  @override
  late final GeneratedColumn<bool> isAppLockEnabled = GeneratedColumn<bool>(
    'is_app_lock_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_app_lock_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isScreenshotBlockedMeta =
      const VerificationMeta('isScreenshotBlocked');
  @override
  late final GeneratedColumn<bool> isScreenshotBlocked = GeneratedColumn<bool>(
    'is_screenshot_blocked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_screenshot_blocked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _serverEndpointMeta = const VerificationMeta(
    'serverEndpoint',
  );
  @override
  late final GeneratedColumn<String> serverEndpoint = GeneratedColumn<String>(
    'server_endpoint',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _localeMeta = const VerificationMeta('locale');
  @override
  late final GeneratedColumn<String> locale = GeneratedColumn<String>(
    'locale',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('en'),
  );
  static const VerificationMeta _selectedStoreIdMeta = const VerificationMeta(
    'selectedStoreId',
  );
  @override
  late final GeneratedColumn<String> selectedStoreId = GeneratedColumn<String>(
    'selected_store_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _terminalIdMeta = const VerificationMeta(
    'terminalId',
  );
  @override
  late final GeneratedColumn<String> terminalId = GeneratedColumn<String>(
    'terminal_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _terminalTokenMeta = const VerificationMeta(
    'terminalToken',
  );
  @override
  late final GeneratedColumn<String> terminalToken = GeneratedColumn<String>(
    'terminal_token',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _employeeTokenMeta = const VerificationMeta(
    'employeeToken',
  );
  @override
  late final GeneratedColumn<String> employeeToken = GeneratedColumn<String>(
    'employee_token',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _employeeIdMeta = const VerificationMeta(
    'employeeId',
  );
  @override
  late final GeneratedColumn<String> employeeId = GeneratedColumn<String>(
    'employee_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _employeeNameMeta = const VerificationMeta(
    'employeeName',
  );
  @override
  late final GeneratedColumn<String> employeeName = GeneratedColumn<String>(
    'employee_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _employeeRoleMeta = const VerificationMeta(
    'employeeRole',
  );
  @override
  late final GeneratedColumn<String> employeeRole = GeneratedColumn<String>(
    'employee_role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    isDarkMode,
    isAppLockEnabled,
    isScreenshotBlocked,
    serverEndpoint,
    locale,
    selectedStoreId,
    terminalId,
    terminalToken,
    employeeToken,
    employeeId,
    employeeName,
    employeeRole,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<AppSetting> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_dark_mode')) {
      context.handle(
        _isDarkModeMeta,
        isDarkMode.isAcceptableOrUnknown(
          data['is_dark_mode']!,
          _isDarkModeMeta,
        ),
      );
    }
    if (data.containsKey('is_app_lock_enabled')) {
      context.handle(
        _isAppLockEnabledMeta,
        isAppLockEnabled.isAcceptableOrUnknown(
          data['is_app_lock_enabled']!,
          _isAppLockEnabledMeta,
        ),
      );
    }
    if (data.containsKey('is_screenshot_blocked')) {
      context.handle(
        _isScreenshotBlockedMeta,
        isScreenshotBlocked.isAcceptableOrUnknown(
          data['is_screenshot_blocked']!,
          _isScreenshotBlockedMeta,
        ),
      );
    }
    if (data.containsKey('server_endpoint')) {
      context.handle(
        _serverEndpointMeta,
        serverEndpoint.isAcceptableOrUnknown(
          data['server_endpoint']!,
          _serverEndpointMeta,
        ),
      );
    }
    if (data.containsKey('locale')) {
      context.handle(
        _localeMeta,
        locale.isAcceptableOrUnknown(data['locale']!, _localeMeta),
      );
    }
    if (data.containsKey('selected_store_id')) {
      context.handle(
        _selectedStoreIdMeta,
        selectedStoreId.isAcceptableOrUnknown(
          data['selected_store_id']!,
          _selectedStoreIdMeta,
        ),
      );
    }
    if (data.containsKey('terminal_id')) {
      context.handle(
        _terminalIdMeta,
        terminalId.isAcceptableOrUnknown(data['terminal_id']!, _terminalIdMeta),
      );
    }
    if (data.containsKey('terminal_token')) {
      context.handle(
        _terminalTokenMeta,
        terminalToken.isAcceptableOrUnknown(
          data['terminal_token']!,
          _terminalTokenMeta,
        ),
      );
    }
    if (data.containsKey('employee_token')) {
      context.handle(
        _employeeTokenMeta,
        employeeToken.isAcceptableOrUnknown(
          data['employee_token']!,
          _employeeTokenMeta,
        ),
      );
    }
    if (data.containsKey('employee_id')) {
      context.handle(
        _employeeIdMeta,
        employeeId.isAcceptableOrUnknown(data['employee_id']!, _employeeIdMeta),
      );
    }
    if (data.containsKey('employee_name')) {
      context.handle(
        _employeeNameMeta,
        employeeName.isAcceptableOrUnknown(
          data['employee_name']!,
          _employeeNameMeta,
        ),
      );
    }
    if (data.containsKey('employee_role')) {
      context.handle(
        _employeeRoleMeta,
        employeeRole.isAcceptableOrUnknown(
          data['employee_role']!,
          _employeeRoleMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppSetting(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      isDarkMode: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_dark_mode'],
      )!,
      isAppLockEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_app_lock_enabled'],
      )!,
      isScreenshotBlocked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_screenshot_blocked'],
      )!,
      serverEndpoint: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}server_endpoint'],
      )!,
      locale: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}locale'],
      )!,
      selectedStoreId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selected_store_id'],
      )!,
      terminalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}terminal_id'],
      )!,
      terminalToken: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}terminal_token'],
      )!,
      employeeToken: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}employee_token'],
      )!,
      employeeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}employee_id'],
      )!,
      employeeName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}employee_name'],
      )!,
      employeeRole: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}employee_role'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $AppSettingsTable createAlias(String alias) {
    return $AppSettingsTable(attachedDatabase, alias);
  }
}

class AppSetting extends DataClass implements Insertable<AppSetting> {
  final int id;
  final bool isDarkMode;
  final bool isAppLockEnabled;
  final bool isScreenshotBlocked;
  final String serverEndpoint;
  final String locale;
  final String selectedStoreId;
  final String terminalId;
  final String terminalToken;
  final String employeeToken;
  final String employeeId;
  final String employeeName;
  final String employeeRole;
  final DateTime? updatedAt;
  const AppSetting({
    required this.id,
    required this.isDarkMode,
    required this.isAppLockEnabled,
    required this.isScreenshotBlocked,
    required this.serverEndpoint,
    required this.locale,
    required this.selectedStoreId,
    required this.terminalId,
    required this.terminalToken,
    required this.employeeToken,
    required this.employeeId,
    required this.employeeName,
    required this.employeeRole,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_dark_mode'] = Variable<bool>(isDarkMode);
    map['is_app_lock_enabled'] = Variable<bool>(isAppLockEnabled);
    map['is_screenshot_blocked'] = Variable<bool>(isScreenshotBlocked);
    map['server_endpoint'] = Variable<String>(serverEndpoint);
    map['locale'] = Variable<String>(locale);
    map['selected_store_id'] = Variable<String>(selectedStoreId);
    map['terminal_id'] = Variable<String>(terminalId);
    map['terminal_token'] = Variable<String>(terminalToken);
    map['employee_token'] = Variable<String>(employeeToken);
    map['employee_id'] = Variable<String>(employeeId);
    map['employee_name'] = Variable<String>(employeeName);
    map['employee_role'] = Variable<String>(employeeRole);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  AppSettingsCompanion toCompanion(bool nullToAbsent) {
    return AppSettingsCompanion(
      id: Value(id),
      isDarkMode: Value(isDarkMode),
      isAppLockEnabled: Value(isAppLockEnabled),
      isScreenshotBlocked: Value(isScreenshotBlocked),
      serverEndpoint: Value(serverEndpoint),
      locale: Value(locale),
      selectedStoreId: Value(selectedStoreId),
      terminalId: Value(terminalId),
      terminalToken: Value(terminalToken),
      employeeToken: Value(employeeToken),
      employeeId: Value(employeeId),
      employeeName: Value(employeeName),
      employeeRole: Value(employeeRole),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory AppSetting.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppSetting(
      id: serializer.fromJson<int>(json['id']),
      isDarkMode: serializer.fromJson<bool>(json['isDarkMode']),
      isAppLockEnabled: serializer.fromJson<bool>(json['isAppLockEnabled']),
      isScreenshotBlocked: serializer.fromJson<bool>(
        json['isScreenshotBlocked'],
      ),
      serverEndpoint: serializer.fromJson<String>(json['serverEndpoint']),
      locale: serializer.fromJson<String>(json['locale']),
      selectedStoreId: serializer.fromJson<String>(json['selectedStoreId']),
      terminalId: serializer.fromJson<String>(json['terminalId']),
      terminalToken: serializer.fromJson<String>(json['terminalToken']),
      employeeToken: serializer.fromJson<String>(json['employeeToken']),
      employeeId: serializer.fromJson<String>(json['employeeId']),
      employeeName: serializer.fromJson<String>(json['employeeName']),
      employeeRole: serializer.fromJson<String>(json['employeeRole']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isDarkMode': serializer.toJson<bool>(isDarkMode),
      'isAppLockEnabled': serializer.toJson<bool>(isAppLockEnabled),
      'isScreenshotBlocked': serializer.toJson<bool>(isScreenshotBlocked),
      'serverEndpoint': serializer.toJson<String>(serverEndpoint),
      'locale': serializer.toJson<String>(locale),
      'selectedStoreId': serializer.toJson<String>(selectedStoreId),
      'terminalId': serializer.toJson<String>(terminalId),
      'terminalToken': serializer.toJson<String>(terminalToken),
      'employeeToken': serializer.toJson<String>(employeeToken),
      'employeeId': serializer.toJson<String>(employeeId),
      'employeeName': serializer.toJson<String>(employeeName),
      'employeeRole': serializer.toJson<String>(employeeRole),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  AppSetting copyWith({
    int? id,
    bool? isDarkMode,
    bool? isAppLockEnabled,
    bool? isScreenshotBlocked,
    String? serverEndpoint,
    String? locale,
    String? selectedStoreId,
    String? terminalId,
    String? terminalToken,
    String? employeeToken,
    String? employeeId,
    String? employeeName,
    String? employeeRole,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => AppSetting(
    id: id ?? this.id,
    isDarkMode: isDarkMode ?? this.isDarkMode,
    isAppLockEnabled: isAppLockEnabled ?? this.isAppLockEnabled,
    isScreenshotBlocked: isScreenshotBlocked ?? this.isScreenshotBlocked,
    serverEndpoint: serverEndpoint ?? this.serverEndpoint,
    locale: locale ?? this.locale,
    selectedStoreId: selectedStoreId ?? this.selectedStoreId,
    terminalId: terminalId ?? this.terminalId,
    terminalToken: terminalToken ?? this.terminalToken,
    employeeToken: employeeToken ?? this.employeeToken,
    employeeId: employeeId ?? this.employeeId,
    employeeName: employeeName ?? this.employeeName,
    employeeRole: employeeRole ?? this.employeeRole,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  AppSetting copyWithCompanion(AppSettingsCompanion data) {
    return AppSetting(
      id: data.id.present ? data.id.value : this.id,
      isDarkMode: data.isDarkMode.present
          ? data.isDarkMode.value
          : this.isDarkMode,
      isAppLockEnabled: data.isAppLockEnabled.present
          ? data.isAppLockEnabled.value
          : this.isAppLockEnabled,
      isScreenshotBlocked: data.isScreenshotBlocked.present
          ? data.isScreenshotBlocked.value
          : this.isScreenshotBlocked,
      serverEndpoint: data.serverEndpoint.present
          ? data.serverEndpoint.value
          : this.serverEndpoint,
      locale: data.locale.present ? data.locale.value : this.locale,
      selectedStoreId: data.selectedStoreId.present
          ? data.selectedStoreId.value
          : this.selectedStoreId,
      terminalId: data.terminalId.present
          ? data.terminalId.value
          : this.terminalId,
      terminalToken: data.terminalToken.present
          ? data.terminalToken.value
          : this.terminalToken,
      employeeToken: data.employeeToken.present
          ? data.employeeToken.value
          : this.employeeToken,
      employeeId: data.employeeId.present
          ? data.employeeId.value
          : this.employeeId,
      employeeName: data.employeeName.present
          ? data.employeeName.value
          : this.employeeName,
      employeeRole: data.employeeRole.present
          ? data.employeeRole.value
          : this.employeeRole,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppSetting(')
          ..write('id: $id, ')
          ..write('isDarkMode: $isDarkMode, ')
          ..write('isAppLockEnabled: $isAppLockEnabled, ')
          ..write('isScreenshotBlocked: $isScreenshotBlocked, ')
          ..write('serverEndpoint: $serverEndpoint, ')
          ..write('locale: $locale, ')
          ..write('selectedStoreId: $selectedStoreId, ')
          ..write('terminalId: $terminalId, ')
          ..write('terminalToken: $terminalToken, ')
          ..write('employeeToken: $employeeToken, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('employeeRole: $employeeRole, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    isDarkMode,
    isAppLockEnabled,
    isScreenshotBlocked,
    serverEndpoint,
    locale,
    selectedStoreId,
    terminalId,
    terminalToken,
    employeeToken,
    employeeId,
    employeeName,
    employeeRole,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppSetting &&
          other.id == this.id &&
          other.isDarkMode == this.isDarkMode &&
          other.isAppLockEnabled == this.isAppLockEnabled &&
          other.isScreenshotBlocked == this.isScreenshotBlocked &&
          other.serverEndpoint == this.serverEndpoint &&
          other.locale == this.locale &&
          other.selectedStoreId == this.selectedStoreId &&
          other.terminalId == this.terminalId &&
          other.terminalToken == this.terminalToken &&
          other.employeeToken == this.employeeToken &&
          other.employeeId == this.employeeId &&
          other.employeeName == this.employeeName &&
          other.employeeRole == this.employeeRole &&
          other.updatedAt == this.updatedAt);
}

class AppSettingsCompanion extends UpdateCompanion<AppSetting> {
  final Value<int> id;
  final Value<bool> isDarkMode;
  final Value<bool> isAppLockEnabled;
  final Value<bool> isScreenshotBlocked;
  final Value<String> serverEndpoint;
  final Value<String> locale;
  final Value<String> selectedStoreId;
  final Value<String> terminalId;
  final Value<String> terminalToken;
  final Value<String> employeeToken;
  final Value<String> employeeId;
  final Value<String> employeeName;
  final Value<String> employeeRole;
  final Value<DateTime?> updatedAt;
  const AppSettingsCompanion({
    this.id = const Value.absent(),
    this.isDarkMode = const Value.absent(),
    this.isAppLockEnabled = const Value.absent(),
    this.isScreenshotBlocked = const Value.absent(),
    this.serverEndpoint = const Value.absent(),
    this.locale = const Value.absent(),
    this.selectedStoreId = const Value.absent(),
    this.terminalId = const Value.absent(),
    this.terminalToken = const Value.absent(),
    this.employeeToken = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.employeeRole = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AppSettingsCompanion.insert({
    this.id = const Value.absent(),
    this.isDarkMode = const Value.absent(),
    this.isAppLockEnabled = const Value.absent(),
    this.isScreenshotBlocked = const Value.absent(),
    this.serverEndpoint = const Value.absent(),
    this.locale = const Value.absent(),
    this.selectedStoreId = const Value.absent(),
    this.terminalId = const Value.absent(),
    this.terminalToken = const Value.absent(),
    this.employeeToken = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.employeeRole = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<AppSetting> custom({
    Expression<int>? id,
    Expression<bool>? isDarkMode,
    Expression<bool>? isAppLockEnabled,
    Expression<bool>? isScreenshotBlocked,
    Expression<String>? serverEndpoint,
    Expression<String>? locale,
    Expression<String>? selectedStoreId,
    Expression<String>? terminalId,
    Expression<String>? terminalToken,
    Expression<String>? employeeToken,
    Expression<String>? employeeId,
    Expression<String>? employeeName,
    Expression<String>? employeeRole,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isDarkMode != null) 'is_dark_mode': isDarkMode,
      if (isAppLockEnabled != null) 'is_app_lock_enabled': isAppLockEnabled,
      if (isScreenshotBlocked != null)
        'is_screenshot_blocked': isScreenshotBlocked,
      if (serverEndpoint != null) 'server_endpoint': serverEndpoint,
      if (locale != null) 'locale': locale,
      if (selectedStoreId != null) 'selected_store_id': selectedStoreId,
      if (terminalId != null) 'terminal_id': terminalId,
      if (terminalToken != null) 'terminal_token': terminalToken,
      if (employeeToken != null) 'employee_token': employeeToken,
      if (employeeId != null) 'employee_id': employeeId,
      if (employeeName != null) 'employee_name': employeeName,
      if (employeeRole != null) 'employee_role': employeeRole,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  AppSettingsCompanion copyWith({
    Value<int>? id,
    Value<bool>? isDarkMode,
    Value<bool>? isAppLockEnabled,
    Value<bool>? isScreenshotBlocked,
    Value<String>? serverEndpoint,
    Value<String>? locale,
    Value<String>? selectedStoreId,
    Value<String>? terminalId,
    Value<String>? terminalToken,
    Value<String>? employeeToken,
    Value<String>? employeeId,
    Value<String>? employeeName,
    Value<String>? employeeRole,
    Value<DateTime?>? updatedAt,
  }) {
    return AppSettingsCompanion(
      id: id ?? this.id,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      isAppLockEnabled: isAppLockEnabled ?? this.isAppLockEnabled,
      isScreenshotBlocked: isScreenshotBlocked ?? this.isScreenshotBlocked,
      serverEndpoint: serverEndpoint ?? this.serverEndpoint,
      locale: locale ?? this.locale,
      selectedStoreId: selectedStoreId ?? this.selectedStoreId,
      terminalId: terminalId ?? this.terminalId,
      terminalToken: terminalToken ?? this.terminalToken,
      employeeToken: employeeToken ?? this.employeeToken,
      employeeId: employeeId ?? this.employeeId,
      employeeName: employeeName ?? this.employeeName,
      employeeRole: employeeRole ?? this.employeeRole,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isDarkMode.present) {
      map['is_dark_mode'] = Variable<bool>(isDarkMode.value);
    }
    if (isAppLockEnabled.present) {
      map['is_app_lock_enabled'] = Variable<bool>(isAppLockEnabled.value);
    }
    if (isScreenshotBlocked.present) {
      map['is_screenshot_blocked'] = Variable<bool>(isScreenshotBlocked.value);
    }
    if (serverEndpoint.present) {
      map['server_endpoint'] = Variable<String>(serverEndpoint.value);
    }
    if (locale.present) {
      map['locale'] = Variable<String>(locale.value);
    }
    if (selectedStoreId.present) {
      map['selected_store_id'] = Variable<String>(selectedStoreId.value);
    }
    if (terminalId.present) {
      map['terminal_id'] = Variable<String>(terminalId.value);
    }
    if (terminalToken.present) {
      map['terminal_token'] = Variable<String>(terminalToken.value);
    }
    if (employeeToken.present) {
      map['employee_token'] = Variable<String>(employeeToken.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<String>(employeeId.value);
    }
    if (employeeName.present) {
      map['employee_name'] = Variable<String>(employeeName.value);
    }
    if (employeeRole.present) {
      map['employee_role'] = Variable<String>(employeeRole.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsCompanion(')
          ..write('id: $id, ')
          ..write('isDarkMode: $isDarkMode, ')
          ..write('isAppLockEnabled: $isAppLockEnabled, ')
          ..write('isScreenshotBlocked: $isScreenshotBlocked, ')
          ..write('serverEndpoint: $serverEndpoint, ')
          ..write('locale: $locale, ')
          ..write('selectedStoreId: $selectedStoreId, ')
          ..write('terminalId: $terminalId, ')
          ..write('terminalToken: $terminalToken, ')
          ..write('employeeToken: $employeeToken, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('employeeRole: $employeeRole, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $AppSettingsTable appSettings = $AppSettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, appSettings];
}

typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      required String id,
      Value<String> name,
      Value<String> email,
      Value<String> phone,
      Value<String> token,
      Value<String> role,
      Value<String> profileImage,
      Value<bool> isLoggedIn,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<int> rowid,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> email,
      Value<String> phone,
      Value<String> token,
      Value<String> role,
      Value<String> profileImage,
      Value<bool> isLoggedIn,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<int> rowid,
    });

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get token => $composableBuilder(
    column: $table.token,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get profileImage => $composableBuilder(
    column: $table.profileImage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isLoggedIn => $composableBuilder(
    column: $table.isLoggedIn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get token => $composableBuilder(
    column: $table.token,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get profileImage => $composableBuilder(
    column: $table.profileImage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isLoggedIn => $composableBuilder(
    column: $table.isLoggedIn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get token =>
      $composableBuilder(column: $table.token, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<String> get profileImage => $composableBuilder(
    column: $table.profileImage,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isLoggedIn => $composableBuilder(
    column: $table.isLoggedIn,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTable,
          User,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
          User,
          PrefetchHooks Function()
        > {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> token = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<String> profileImage = const Value.absent(),
                Value<bool> isLoggedIn = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion(
                id: id,
                name: name,
                email: email,
                phone: phone,
                token: token,
                role: role,
                profileImage: profileImage,
                isLoggedIn: isLoggedIn,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String> name = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> token = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<String> profileImage = const Value.absent(),
                Value<bool> isLoggedIn = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion.insert(
                id: id,
                name: name,
                email: email,
                phone: phone,
                token: token,
                role: role,
                profileImage: profileImage,
                isLoggedIn: isLoggedIn,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTable,
      User,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
      User,
      PrefetchHooks Function()
    >;
typedef $$AppSettingsTableCreateCompanionBuilder =
    AppSettingsCompanion Function({
      Value<int> id,
      Value<bool> isDarkMode,
      Value<bool> isAppLockEnabled,
      Value<bool> isScreenshotBlocked,
      Value<String> serverEndpoint,
      Value<String> locale,
      Value<String> selectedStoreId,
      Value<String> terminalId,
      Value<String> terminalToken,
      Value<String> employeeToken,
      Value<String> employeeId,
      Value<String> employeeName,
      Value<String> employeeRole,
      Value<DateTime?> updatedAt,
    });
typedef $$AppSettingsTableUpdateCompanionBuilder =
    AppSettingsCompanion Function({
      Value<int> id,
      Value<bool> isDarkMode,
      Value<bool> isAppLockEnabled,
      Value<bool> isScreenshotBlocked,
      Value<String> serverEndpoint,
      Value<String> locale,
      Value<String> selectedStoreId,
      Value<String> terminalId,
      Value<String> terminalToken,
      Value<String> employeeToken,
      Value<String> employeeId,
      Value<String> employeeName,
      Value<String> employeeRole,
      Value<DateTime?> updatedAt,
    });

class $$AppSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDarkMode => $composableBuilder(
    column: $table.isDarkMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isAppLockEnabled => $composableBuilder(
    column: $table.isAppLockEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isScreenshotBlocked => $composableBuilder(
    column: $table.isScreenshotBlocked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get serverEndpoint => $composableBuilder(
    column: $table.serverEndpoint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locale => $composableBuilder(
    column: $table.locale,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get selectedStoreId => $composableBuilder(
    column: $table.selectedStoreId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get terminalId => $composableBuilder(
    column: $table.terminalId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get terminalToken => $composableBuilder(
    column: $table.terminalToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get employeeToken => $composableBuilder(
    column: $table.employeeToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get employeeId => $composableBuilder(
    column: $table.employeeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get employeeName => $composableBuilder(
    column: $table.employeeName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get employeeRole => $composableBuilder(
    column: $table.employeeRole,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AppSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDarkMode => $composableBuilder(
    column: $table.isDarkMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isAppLockEnabled => $composableBuilder(
    column: $table.isAppLockEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isScreenshotBlocked => $composableBuilder(
    column: $table.isScreenshotBlocked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get serverEndpoint => $composableBuilder(
    column: $table.serverEndpoint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locale => $composableBuilder(
    column: $table.locale,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get selectedStoreId => $composableBuilder(
    column: $table.selectedStoreId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get terminalId => $composableBuilder(
    column: $table.terminalId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get terminalToken => $composableBuilder(
    column: $table.terminalToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get employeeToken => $composableBuilder(
    column: $table.employeeToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get employeeId => $composableBuilder(
    column: $table.employeeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get employeeName => $composableBuilder(
    column: $table.employeeName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get employeeRole => $composableBuilder(
    column: $table.employeeRole,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AppSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isDarkMode => $composableBuilder(
    column: $table.isDarkMode,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isAppLockEnabled => $composableBuilder(
    column: $table.isAppLockEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isScreenshotBlocked => $composableBuilder(
    column: $table.isScreenshotBlocked,
    builder: (column) => column,
  );

  GeneratedColumn<String> get serverEndpoint => $composableBuilder(
    column: $table.serverEndpoint,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locale =>
      $composableBuilder(column: $table.locale, builder: (column) => column);

  GeneratedColumn<String> get selectedStoreId => $composableBuilder(
    column: $table.selectedStoreId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get terminalId => $composableBuilder(
    column: $table.terminalId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get terminalToken => $composableBuilder(
    column: $table.terminalToken,
    builder: (column) => column,
  );

  GeneratedColumn<String> get employeeToken => $composableBuilder(
    column: $table.employeeToken,
    builder: (column) => column,
  );

  GeneratedColumn<String> get employeeId => $composableBuilder(
    column: $table.employeeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get employeeName => $composableBuilder(
    column: $table.employeeName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get employeeRole => $composableBuilder(
    column: $table.employeeRole,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$AppSettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AppSettingsTable,
          AppSetting,
          $$AppSettingsTableFilterComposer,
          $$AppSettingsTableOrderingComposer,
          $$AppSettingsTableAnnotationComposer,
          $$AppSettingsTableCreateCompanionBuilder,
          $$AppSettingsTableUpdateCompanionBuilder,
          (
            AppSetting,
            BaseReferences<_$AppDatabase, $AppSettingsTable, AppSetting>,
          ),
          AppSetting,
          PrefetchHooks Function()
        > {
  $$AppSettingsTableTableManager(_$AppDatabase db, $AppSettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppSettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<bool> isDarkMode = const Value.absent(),
                Value<bool> isAppLockEnabled = const Value.absent(),
                Value<bool> isScreenshotBlocked = const Value.absent(),
                Value<String> serverEndpoint = const Value.absent(),
                Value<String> locale = const Value.absent(),
                Value<String> selectedStoreId = const Value.absent(),
                Value<String> terminalId = const Value.absent(),
                Value<String> terminalToken = const Value.absent(),
                Value<String> employeeToken = const Value.absent(),
                Value<String> employeeId = const Value.absent(),
                Value<String> employeeName = const Value.absent(),
                Value<String> employeeRole = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => AppSettingsCompanion(
                id: id,
                isDarkMode: isDarkMode,
                isAppLockEnabled: isAppLockEnabled,
                isScreenshotBlocked: isScreenshotBlocked,
                serverEndpoint: serverEndpoint,
                locale: locale,
                selectedStoreId: selectedStoreId,
                terminalId: terminalId,
                terminalToken: terminalToken,
                employeeToken: employeeToken,
                employeeId: employeeId,
                employeeName: employeeName,
                employeeRole: employeeRole,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<bool> isDarkMode = const Value.absent(),
                Value<bool> isAppLockEnabled = const Value.absent(),
                Value<bool> isScreenshotBlocked = const Value.absent(),
                Value<String> serverEndpoint = const Value.absent(),
                Value<String> locale = const Value.absent(),
                Value<String> selectedStoreId = const Value.absent(),
                Value<String> terminalId = const Value.absent(),
                Value<String> terminalToken = const Value.absent(),
                Value<String> employeeToken = const Value.absent(),
                Value<String> employeeId = const Value.absent(),
                Value<String> employeeName = const Value.absent(),
                Value<String> employeeRole = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => AppSettingsCompanion.insert(
                id: id,
                isDarkMode: isDarkMode,
                isAppLockEnabled: isAppLockEnabled,
                isScreenshotBlocked: isScreenshotBlocked,
                serverEndpoint: serverEndpoint,
                locale: locale,
                selectedStoreId: selectedStoreId,
                terminalId: terminalId,
                terminalToken: terminalToken,
                employeeToken: employeeToken,
                employeeId: employeeId,
                employeeName: employeeName,
                employeeRole: employeeRole,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AppSettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AppSettingsTable,
      AppSetting,
      $$AppSettingsTableFilterComposer,
      $$AppSettingsTableOrderingComposer,
      $$AppSettingsTableAnnotationComposer,
      $$AppSettingsTableCreateCompanionBuilder,
      $$AppSettingsTableUpdateCompanionBuilder,
      (
        AppSetting,
        BaseReferences<_$AppDatabase, $AppSettingsTable, AppSetting>,
      ),
      AppSetting,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$AppSettingsTableTableManager get appSettings =>
      $$AppSettingsTableTableManager(_db, _db.appSettings);
}
