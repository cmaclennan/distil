import '../database.dart';

class SpiritPreviousTable extends SupabaseTable<SpiritPreviousRow> {
  @override
  String get tableName => 'Spirit_Previous';

  @override
  SpiritPreviousRow createRow(Map<String, dynamic> data) =>
      SpiritPreviousRow(data);
}

class SpiritPreviousRow extends SupabaseDataRow {
  SpiritPreviousRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpiritPreviousTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
