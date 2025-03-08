import '../database.dart';

class TrackingTable extends SupabaseTable<TrackingRow> {
  @override
  String get tableName => 'Tracking';

  @override
  TrackingRow createRow(Map<String, dynamic> data) => TrackingRow(data);
}

class TrackingRow extends SupabaseDataRow {
  TrackingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrackingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get barrelId => getField<String>('barrel_id');
  set barrelId(String? value) => setField<String>('barrel_id', value);

  String? get spirit => getField<String>('spirit');
  set spirit(String? value) => setField<String>('spirit', value);

  String? get barrel => getField<String>('barrel');
  set barrel(String? value) => setField<String>('barrel', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  String? get prevSpirit => getField<String>('prev_spirit');
  set prevSpirit(String? value) => setField<String>('prev_spirit', value);

  String? get dateFilled => getField<String>('date_filled');
  set dateFilled(String? value) => setField<String>('date_filled', value);

  String? get dateMature => getField<String>('date_mature');
  set dateMature(String? value) => setField<String>('date_mature', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get batch => getField<String>('batch');
  set batch(String? value) => setField<String>('batch', value);

  String? get tastingNotes => getField<String>('tasting_notes');
  set tastingNotes(String? value) => setField<String>('tasting_notes', value);

  String? get angelsShare => getField<String>('angels_share');
  set angelsShare(String? value) => setField<String>('angels_share', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get lastInspection => getField<String>('last_inspection');
  set lastInspection(String? value) =>
      setField<String>('last_inspection', value);

  String? get notesComments => getField<String>('notes_comments');
  set notesComments(String? value) => setField<String>('notes_comments', value);

  String? get barrelIdOld => getField<String>('barrel_id_old');
  set barrelIdOld(String? value) => setField<String>('barrel_id_old', value);

  String? get abv => getField<String>('abv');
  set abv(String? value) => setField<String>('abv', value);

  String? get volume => getField<String>('volume');
  set volume(String? value) => setField<String>('volume', value);
}
