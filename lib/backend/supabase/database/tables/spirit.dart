import '../database.dart';

class SpiritTable extends SupabaseTable<SpiritRow> {
  @override
  String get tableName => 'Spirit';

  @override
  SpiritRow createRow(Map<String, dynamic> data) => SpiritRow(data);
}

class SpiritRow extends SupabaseDataRow {
  SpiritRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpiritTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
