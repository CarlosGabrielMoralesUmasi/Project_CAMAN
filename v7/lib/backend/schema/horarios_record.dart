import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorariosRecord extends FirestoreRecord {
  HorariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "horario1" field.
  String? _horario1;
  String get horario1 => _horario1 ?? '';
  bool hasHorario1() => _horario1 != null;

  // "disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  void _initializeFields() {
    _horario1 = snapshotData['horario1'] as String?;
    _disponible = snapshotData['disponible'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horarios');

  static Stream<HorariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorariosRecord.fromSnapshot(s));

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorariosRecord.fromSnapshot(s));

  static HorariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorariosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHorariosRecordData({
  String? horario1,
  bool? disponible,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'horario1': horario1,
      'disponible': disponible,
    }.withoutNulls,
  );

  return firestoreData;
}
