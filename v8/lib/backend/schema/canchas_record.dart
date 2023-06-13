import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CanchasRecord extends FirestoreRecord {
  CanchasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NombreCancha" field.
  String? _nombreCancha;
  String get nombreCancha => _nombreCancha ?? '';
  bool hasNombreCancha() => _nombreCancha != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "PrecioDeLaCancha" field.
  int? _precioDeLaCancha;
  int get precioDeLaCancha => _precioDeLaCancha ?? 0;
  bool hasPrecioDeLaCancha() => _precioDeLaCancha != null;

  // "Horario" field.
  bool? _horario;
  bool get horario => _horario ?? false;
  bool hasHorario() => _horario != null;

  void _initializeFields() {
    _nombreCancha = snapshotData['NombreCancha'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _precioDeLaCancha = snapshotData['PrecioDeLaCancha'] as int?;
    _horario = snapshotData['Horario'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('canchas');

  static Stream<CanchasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CanchasRecord.fromSnapshot(s));

  static Future<CanchasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CanchasRecord.fromSnapshot(s));

  static CanchasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CanchasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CanchasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CanchasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CanchasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CanchasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCanchasRecordData({
  String? nombreCancha,
  String? descripcion,
  int? precioDeLaCancha,
  bool? horario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreCancha': nombreCancha,
      'Descripcion': descripcion,
      'PrecioDeLaCancha': precioDeLaCancha,
      'Horario': horario,
    }.withoutNulls,
  );

  return firestoreData;
}
