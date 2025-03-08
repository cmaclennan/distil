import '../database.dart';

class SizeTable extends SupabaseTable<SizeRow> {
  @override
  String get tableName => 'Size';

  @override
  SizeRow createRow(Map<String, dynamic> data) => SizeRow(data);
}

class SizeRow extends SupabaseDataRow {
  SizeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SizeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);
}
