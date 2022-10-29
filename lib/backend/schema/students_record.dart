import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'students_record.g.dart';

abstract class StudentsRecord
    implements Built<StudentsRecord, StudentsRecordBuilder> {
  static Serializer<StudentsRecord> get serializer =>
      _$studentsRecordSerializer;

  String? get studentName;

  DateTime? get dateOfBirth;

  String? get vaccineType;

  String? get vaccinationStatus;

  String? get aadharNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudentsRecordBuilder builder) => builder
    ..studentName = ''
    ..vaccineType = ''
    ..vaccinationStatus = ''
    ..aadharNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Students');

  static Stream<StudentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudentsRecord._();
  factory StudentsRecord([void Function(StudentsRecordBuilder) updates]) =
      _$StudentsRecord;

  static StudentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudentsRecordData({
  String? studentName,
  DateTime? dateOfBirth,
  String? vaccineType,
  String? vaccinationStatus,
  String? aadharNumber,
}) {
  final firestoreData = serializers.toFirestore(
    StudentsRecord.serializer,
    StudentsRecord(
      (s) => s
        ..studentName = studentName
        ..dateOfBirth = dateOfBirth
        ..vaccineType = vaccineType
        ..vaccinationStatus = vaccinationStatus
        ..aadharNumber = aadharNumber,
    ),
  );

  return firestoreData;
}
