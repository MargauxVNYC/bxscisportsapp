import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsRecord extends FirestoreRecord {
  TeamsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "teamname" field.
  String? _teamname;
  String get teamname => _teamname ?? '';
  bool hasTeamname() => _teamname != null;

  // "season" field.
  String? _season;
  String get season => _season ?? '';
  bool hasSeason() => _season != null;

  // "teamroster" field.
  List<String>? _teamroster;
  List<String> get teamroster => _teamroster ?? const [];
  bool hasTeamroster() => _teamroster != null;

  // "teamcaptains" field.
  List<String>? _teamcaptains;
  List<String> get teamcaptains => _teamcaptains ?? const [];
  bool hasTeamcaptains() => _teamcaptains != null;

  // "teamlogo" field.
  String? _teamlogo;
  String get teamlogo => _teamlogo ?? '';
  bool hasTeamlogo() => _teamlogo != null;

  // "teamimage" field.
  String? _teamimage;
  String get teamimage => _teamimage ?? '';
  bool hasTeamimage() => _teamimage != null;

  void _initializeFields() {
    _teamname = snapshotData['teamname'] as String?;
    _season = snapshotData['season'] as String?;
    _teamroster = getDataList(snapshotData['teamroster']);
    _teamcaptains = getDataList(snapshotData['teamcaptains']);
    _teamlogo = snapshotData['teamlogo'] as String?;
    _teamimage = snapshotData['teamimage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamsRecord.fromSnapshot(s));

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamsRecord.fromSnapshot(s));

  static TeamsRecord fromSnapshot(DocumentSnapshot snapshot) => TeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createTeamsRecordData({
  String? teamname,
  String? season,
  String? teamlogo,
  String? teamimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'teamname': teamname,
      'season': season,
      'teamlogo': teamlogo,
      'teamimage': teamimage,
    }.withoutNulls,
  );

  return firestoreData;
}
