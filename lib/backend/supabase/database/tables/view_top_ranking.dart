import '../database.dart';

class ViewTopRankingTable extends SupabaseTable<ViewTopRankingRow> {
  @override
  String get tableName => 'view_top_ranking';

  @override
  ViewTopRankingRow createRow(Map<String, dynamic> data) =>
      ViewTopRankingRow(data);
}

class ViewTopRankingRow extends SupabaseDataRow {
  ViewTopRankingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTopRankingTable();

  int? get totalLead => getField<int>('total_lead');
  set totalLead(int? value) => setField<int>('total_lead', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);

  double? get totalValorProduto => getField<double>('total_valor_produto');
  set totalValorProduto(double? value) =>
      setField<double>('total_valor_produto', value);
}
