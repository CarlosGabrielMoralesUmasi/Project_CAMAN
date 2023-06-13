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

  // "check_h" field.
  bool? _checkH;
  bool get checkH => _checkH ?? false;
  bool hasCheckH() => _checkH != null;

  // "mes_h" field.
  String? _mesH;
  String get mesH => _mesH ?? '';
  bool hasMesH() => _mesH != null;

  // "dia_h" field.
  String? _diaH;
  String get diaH => _diaH ?? '';
  bool hasDiaH() => _diaH != null;

  void _initializeFields() {
    _checkH = snapshotData['check_h'] as bool?;
    _mesH = snapshotData['mes_h'] as String?;
    _diaH = snapshotData['dia_h'] as String?;
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

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHorariosRecordData({
  bool? checkH,
  String? mesH,
  String? diaH,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'check_h': checkH,
      'mes_h': mesH,
      'dia_h': diaH,
    }.withoutNulls,
  );

  return firestoreData;
}
