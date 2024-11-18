import '../database.dart';

class ViewLeadGroupedTable extends SupabaseTable<ViewLeadGroupedRow> {
  @override
  String get tableName => 'view_lead_grouped';

  @override
  ViewLeadGroupedRow createRow(Map<String, dynamic> data) =>
      ViewLeadGroupedRow(data);
}

class ViewLeadGroupedRow extends SupabaseDataRow {
  ViewLeadGroupedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewLeadGroupedTable();

  int? get totalLead => getField<int>('total_lead');
  set totalLead(int? value) => setField<int>('total_lead', value);

  DateTime? get month => getField<DateTime>('month');
  set month(DateTime? value) => setField<DateTime>('month', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);

  double? get totalValorProduto => getField<double>('total_valor_produto');
  set totalValorProduto(double? value) =>
      setField<double>('total_valor_produto', value);

  String? get datreferencia => getField<String>('datreferencia');
  set datreferencia(String? value) => setField<String>('datreferencia', value);
}
