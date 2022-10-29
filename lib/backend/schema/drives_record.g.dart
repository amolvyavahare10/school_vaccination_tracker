// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drives_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DrivesRecord> _$drivesRecordSerializer =
    new _$DrivesRecordSerializer();

class _$DrivesRecordSerializer implements StructuredSerializer<DrivesRecord> {
  @override
  final Iterable<Type> types = const [DrivesRecord, _$DrivesRecord];
  @override
  final String wireName = 'DrivesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DrivesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.completedDate;
    if (value != null) {
      result
        ..add('completedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.driveDate;
    if (value != null) {
      result
        ..add('driveDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.driveName;
    if (value != null) {
      result
        ..add('driveName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driveDescription;
    if (value != null) {
      result
        ..add('driveDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driveState;
    if (value != null) {
      result
        ..add('driveState')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DrivesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DrivesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'completedDate':
          result.completedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'driveDate':
          result.driveDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'driveName':
          result.driveName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driveDescription':
          result.driveDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driveState':
          result.driveState = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DrivesRecord extends DrivesRecord {
  @override
  final DateTime? completedDate;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DateTime? driveDate;
  @override
  final String? driveName;
  @override
  final String? driveDescription;
  @override
  final bool? driveState;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DrivesRecord([void Function(DrivesRecordBuilder)? updates]) =>
      (new DrivesRecordBuilder()..update(updates))._build();

  _$DrivesRecord._(
      {this.completedDate,
      this.user,
      this.driveDate,
      this.driveName,
      this.driveDescription,
      this.driveState,
      this.ffRef})
      : super._();

  @override
  DrivesRecord rebuild(void Function(DrivesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DrivesRecordBuilder toBuilder() => new DrivesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DrivesRecord &&
        completedDate == other.completedDate &&
        user == other.user &&
        driveDate == other.driveDate &&
        driveName == other.driveName &&
        driveDescription == other.driveDescription &&
        driveState == other.driveState &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, completedDate.hashCode), user.hashCode),
                        driveDate.hashCode),
                    driveName.hashCode),
                driveDescription.hashCode),
            driveState.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DrivesRecord')
          ..add('completedDate', completedDate)
          ..add('user', user)
          ..add('driveDate', driveDate)
          ..add('driveName', driveName)
          ..add('driveDescription', driveDescription)
          ..add('driveState', driveState)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DrivesRecordBuilder
    implements Builder<DrivesRecord, DrivesRecordBuilder> {
  _$DrivesRecord? _$v;

  DateTime? _completedDate;
  DateTime? get completedDate => _$this._completedDate;
  set completedDate(DateTime? completedDate) =>
      _$this._completedDate = completedDate;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DateTime? _driveDate;
  DateTime? get driveDate => _$this._driveDate;
  set driveDate(DateTime? driveDate) => _$this._driveDate = driveDate;

  String? _driveName;
  String? get driveName => _$this._driveName;
  set driveName(String? driveName) => _$this._driveName = driveName;

  String? _driveDescription;
  String? get driveDescription => _$this._driveDescription;
  set driveDescription(String? driveDescription) =>
      _$this._driveDescription = driveDescription;

  bool? _driveState;
  bool? get driveState => _$this._driveState;
  set driveState(bool? driveState) => _$this._driveState = driveState;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DrivesRecordBuilder() {
    DrivesRecord._initializeBuilder(this);
  }

  DrivesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completedDate = $v.completedDate;
      _user = $v.user;
      _driveDate = $v.driveDate;
      _driveName = $v.driveName;
      _driveDescription = $v.driveDescription;
      _driveState = $v.driveState;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DrivesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DrivesRecord;
  }

  @override
  void update(void Function(DrivesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DrivesRecord build() => _build();

  _$DrivesRecord _build() {
    final _$result = _$v ??
        new _$DrivesRecord._(
            completedDate: completedDate,
            user: user,
            driveDate: driveDate,
            driveName: driveName,
            driveDescription: driveDescription,
            driveState: driveState,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
