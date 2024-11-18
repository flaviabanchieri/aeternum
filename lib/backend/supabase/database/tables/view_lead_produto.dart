import '../database.dart';

class ViewLeadProdutoTable extends SupabaseTable<ViewLeadProdutoRow> {
  @override
  String get tableName => 'view_lead_produto';

  @override
  ViewLeadProdutoRow createRow(Map<String, dynamic> data) =>
      ViewLeadProdutoRow(data);
}

class ViewLeadProdutoRow extends SupabaseDataRow {
  ViewLeadProdutoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewLeadProdutoTable();

  int? get idLead => getField<int>('id_lead');
  set idLead(int? value) => setField<int>('id_lead', value);

  String? get nomeLead => getField<String>('nome_lead');
  set nomeLead(String? value) => setField<String>('nome_lead', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get produtoCodigo => getField<String>('produto_codigo');
  set produtoCodigo(String? value) => setField<String>('produto_codigo', value);

  bool? get aprovacaoGestor => getField<bool>('aprovacao_gestor');
  set aprovacaoGestor(bool? value) => setField<bool>('aprovacao_gestor', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  DateTime? get dataConcluido => getField<DateTime>('data_concluido');
  set dataConcluido(DateTime? value) =>
      setField<DateTime>('data_concluido', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get valorProduto => getField<double>('valor_produto');
  set valorProduto(double? value) => setField<double>('valor_produto', value);

  DateTime? get createdAtLead => getField<DateTime>('created_at_lead');
  set createdAtLead(DateTime? value) =>
      setField<DateTime>('created_at_lead', value);
}
