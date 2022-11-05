// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentsRecord> _$studentsRecordSerializer =
    new _$StudentsRecordSerializer();

class _$StudentsRecordSerializer
    implements StructuredSerializer<StudentsRecord> {
  @override
  final Iterable<Type> types = const [StudentsRecord, _$StudentsRecord];
  @override
  final String wireName = 'StudentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StudentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.studentName;
    if (value != null) {
      result
        ..add('studentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.vaccineType;
    if (value != null) {
      result
        ..add('vaccineType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vaccinationStatus;
    if (value != null) {
      result
        ..add('vaccinationStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aadharNumber;
    if (value != null) {
      result
        ..add('aadharNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  StudentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'studentName':
          result.studentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'vaccineType':
          result.vaccineType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vaccinationStatus':
          result.vaccinationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aadharNumber':
          result.aadharNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$StudentsRecord extends StudentsRecord {
  @override
  final String? studentName;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? vaccineType;
  @override
  final String? vaccinationStatus;
  @override
  final String? aadharNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudentsRecord([void Function(StudentsRecordBuilder)? updates]) =>
      (new StudentsRecordBuilder()..update(updates))._build();

  _$StudentsRecord._(
      {this.studentName,
      this.dateOfBirth,
      this.vaccineType,
      this.vaccinationStatus,
      this.aadharNumber,
      this.ffRef})
      : super._();

  @override
  StudentsRecord rebuild(void Function(StudentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentsRecordBuilder toBuilder() =>
      new StudentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentsRecord &&
        studentName == other.studentName &&
        dateOfBirth == other.dateOfBirth &&
        vaccineType == other.vaccineType &&
        vaccinationStatus == other.vaccinationStatus &&
        aadharNumber == other.aadharNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, studentName.hashCode), dateOfBirth.hashCode),
                    vaccineType.hashCode),
                vaccinationStatus.hashCode),
            aadharNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentsRecord')
          ..add('studentName', studentName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('vaccineType', vaccineType)
          ..add('vaccinationStatus', vaccinationStatus)
          ..add('aadharNumber', aadharNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudentsRecordBuilder
    implements Builder<StudentsRecord, StudentsRecordBuilder> {
  _$StudentsRecord? _$v;

  String? _studentName;
  String? get studentName => _$this._studentName;
  set studentName(String? studentName) => _$this._studentName = studentName;

  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _vaccineType;
  String? get vaccineType => _$this._vaccineType;
  set vaccineType(String? vaccineType) => _$this._vaccineType = vaccineType;

  String? _vaccinationStatus;
  String? get vaccinationStatus => _$this._vaccinationStatus;
  set vaccinationStatus(String? vaccinationStatus) =>
      _$this._vaccinationStatus = vaccinationStatus;

  String? _aadharNumber;
  String? get aadharNumber => _$this._aadharNumber;
  set aadharNumber(String? aadharNumber) => _$this._aadharNumber = aadharNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudentsRecordBuilder() {
    StudentsRecord._initializeBuilder(this);
  }

  StudentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentName = $v.studentName;
      _dateOfBirth = $v.dateOfBirth;
      _vaccineType = $v.vaccineType;
      _vaccinationStatus = $v.vaccinationStatus;
      _aadharNumber = $v.aadharNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudentsRecord;
  }

  @override
  void update(void Function(StudentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentsRecord build() => _build();

  _$StudentsRecord _build() {
    final _$result = _$v ??
        new _$StudentsRecord._(
            studentName: studentName,
            dateOfBirth: dateOfBirth,
            vaccineType: vaccineType,
            vaccinationStatus: vaccinationStatus,
            aadharNumber: aadharNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
