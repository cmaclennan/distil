import '../database.dart';

class BarrelTable extends SupabaseTable<BarrelRow> {
  @override
  String get tableName => 'Barrel';

  @override
  BarrelRow createRow(Map<String, dynamic> data) => BarrelRow(data);
}

class BarrelRow extends SupabaseDataRow {
  BarrelRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BarrelTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
