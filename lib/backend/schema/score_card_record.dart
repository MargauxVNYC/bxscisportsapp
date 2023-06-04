import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScoreCardRecord extends FirestoreRecord {
  ScoreCardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "highlightpicture" field.
  String? _highlightpicture;
  String get highlightpicture => _highlightpicture ?? '';
  bool hasHighlightpicture() => _highlightpicture != null;

  // "bxscilogo" field.
  String? _bxscilogo;
  String get bxscilogo => _bxscilogo ?? '';
  bool hasBxscilogo() => _bxscilogo != null;

  // "home_score" field.
  int? _homeScore;
  int get homeScore => _homeScore ?? 0;
  bool hasHomeScore() => _homeScore != null;

  // "away_score" field.
  int? _awayScore;
  int get awayScore => _awayScore ?? 0;
  bool hasAwayScore() => _awayScore != null;

  // "away_team_logo" field.
  String? _awayTeamLogo;
  String get awayTeamLogo => _awayTeamLogo ?? '';
  bool hasAwayTeamLogo() => _awayTeamLogo != null;

  // "result" field.
  bool? _result;
  bool get result => _result ?? false;
  bool hasResult() => _result != null;

  // "posted_result_date" field.
  DateTime? _postedResultDate;
  DateTime? get postedResultDate => _postedResultDate;
  bool hasPostedResultDate() => _postedResultDate != null;

  // "away_team_name" field.
  String? _awayTeamName;
  String get awayTeamName => _awayTeamName ?? '';
  bool hasAwayTeamName() => _awayTeamName != null;

  void _initializeFields() {
    _highlightpicture = snapshotData['highlightpicture'] as String?;
    _bxscilogo = snapshotData['bxscilogo'] as String?;
    _homeScore = snapshotData['home_score'] as int?;
    _awayScore = snapshotData['away_score'] as int?;
    _awayTeamLogo = snapshotData['away_team_logo'] as String?;
    _result = snapshotData['result'] as bool?;
    _postedResultDate = snapshotData['posted_result_date'] as DateTime?;
    _awayTeamName = snapshotData['away_team_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('score_card');

  static Stream<ScoreCardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScoreCardRecord.fromSnapshot(s));

  static Future<ScoreCardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScoreCardRecord.fromSnapshot(s));

  static ScoreCardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScoreCardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScoreCardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScoreCardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScoreCardRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createScoreCardRecordData({
  String? highlightpicture,
  String? bxscilogo,
  int? homeScore,
  int? awayScore,
  String? awayTeamLogo,
  bool? result,
  DateTime? postedResultDate,
  String? awayTeamName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'highlightpicture': highlightpicture,
      'bxscilogo': bxscilogo,
      'home_score': homeScore,
      'away_score': awayScore,
      'away_team_logo': awayTeamLogo,
      'result': result,
      'posted_result_date': postedResultDate,
      'away_team_name': awayTeamName,
    }.withoutNulls,
  );

  return firestoreData;
}
