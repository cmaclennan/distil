import '../database.dart';

class LocationTable extends SupabaseTable<LocationRow> {
  @override
  String get tableName => 'Location';

  @override
  LocationRow createRow(Map<String, dynamic> data) => LocationRow(data);
}

class LocationRow extends SupabaseDataRow {
  LocationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LocationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
