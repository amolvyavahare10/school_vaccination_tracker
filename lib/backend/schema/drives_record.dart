import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'drives_record.g.dart';

abstract class DrivesRecord
    implements Built<DrivesRecord, DrivesRecordBuilder> {
  static Serializer<DrivesRecord> get serializer => _$drivesRecordSerializer;

  DateTime? get completedDate;

  DocumentReference? get user;

  DateTime? get driveDate;

  String? get driveName;

  String? get driveDescription;

  bool? get driveState;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DrivesRecordBuilder builder) => builder
    ..driveName = ''
    ..driveDescription = ''
    ..driveState = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Drives');

  static Stream<DrivesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DrivesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DrivesRecord._();
  factory DrivesRecord([void Function(DrivesRecordBuilder) updates]) =
      _$DrivesRecord;

  static DrivesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDrivesRecordData({
  DateTime? completedDate,
  DocumentReference? user,
  DateTime? driveDate,
  String? driveName,
  String? driveDescription,
  bool? driveState,
}) {
  final firestoreData = serializers.toFirestore(
    DrivesRecord.serializer,
    DrivesRecord(
      (d) => d
        ..completedDate = completedDate
        ..user = user
        ..driveDate = driveDate
        ..driveName = driveName
        ..driveDescription = driveDescription
        ..driveState = driveState,
    ),
  );

  return firestoreData;
}
