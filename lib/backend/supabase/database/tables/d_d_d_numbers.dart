import '../database.dart';

class DDDNumbersTable extends SupabaseTable<DDDNumbersRow> {
  @override
  String get tableName => 'DDD_numbers';

  @override
  DDDNumbersRow createRow(Map<String, dynamic> data) => DDDNumbersRow(data);
}

class DDDNumbersRow extends SupabaseDataRow {
  DDDNumbersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DDDNumbersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get ddd => getField<int>('ddd');
  set ddd(int? value) => setField<int>('ddd', value);

  String? get phoneId => getField<String>('phone_Id');
  set phoneId(String? value) => setField<String>('phone_Id', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);
}
