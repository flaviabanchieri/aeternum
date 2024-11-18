import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets_compartilhados/date_picker/date_picker_widget.dart';
import '/widgets_compartilhados/header/header_widget.dart';
import '/widgets_compartilhados/sidenav/sidenav_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'relatorio_widget.dart' show RelatorioWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RelatorioModel extends FlutterFlowModel<RelatorioWidget> {
  ///  Local state fields for this page.

  DateTime? dataInicial;

  DateTime? dataFinal;

  int? countLigacoes = 0;

  List<dynamic> listaRelatorio = [];
  void addToListaRelatorio(dynamic item) => listaRelatorio.add(item);
  void removeFromListaRelatorio(dynamic item) => listaRelatorio.remove(item);
  void removeAtIndexFromListaRelatorio(int index) =>
      listaRelatorio.removeAt(index);
  void insertAtIndexInListaRelatorio(int index, dynamic item) =>
      listaRelatorio.insert(index, item);
  void updateListaRelatorioAtIndex(int index, Function(dynamic) updateFn) =>
      listaRelatorio[index] = updateFn(listaRelatorio[index]);

  String? tempoLigacao;

  String? tempoMedioLigacao;

  int? ligacoesEmAndamento;

  double? faturamento;

  int pagina = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Relatorio de gestor)] action in Relatorio widget.
  ApiCallResponse? queryRetornoRelatorioIniciar;
  // Model for Sidenav component.
  late SidenavModel sidenavModel;
  // Model for header component.
  late HeaderModel headerModel;
  // Model for DatePicker component.
  late DatePickerModel datePickerModel1;
  DateTime? datePicked1;
  // Model for DatePicker component.
  late DatePickerModel datePickerModel2;
  DateTime? datePicked2;
  // State field(s) for DropDownAtendente widget.
  String? dropDownAtendenteValue;
  FormFieldController<String>? dropDownAtendenteValueController;
  // State field(s) for DropDownProduto widget.
  String? dropDownProdutoValue;
  FormFieldController<String>? dropDownProdutoValueController;
  // State field(s) for DropDownOrigem widget.
  String? dropDownOrigemValue;
  FormFieldController<String>? dropDownOrigemValueController;
  // State field(s) for DropDownStatus widget.
  String? dropDownStatusValue;
  FormFieldController<String>? dropDownStatusValueController;
  // Stores action output result for [Backend Call - API (Download CSV)] action in Button widget.
  ApiCallResponse? urlcsv;
  // Stores action output result for [Backend Call - API (Relatorio de gestor)] action in Button widget.
  ApiCallResponse? apiResultRelatorioFiltro;
  // Stores action output result for [Backend Call - API (gravacoes)] action in Icon widget.
  ApiCallResponse? apiResult218;
  // Stores action output result for [Backend Call - API (Relatorio de gestor)] action in Icon widget.
  ApiCallResponse? apiResultRelatorioFiltroCopy;
  // Stores action output result for [Backend Call - API (Relatorio de gestor)] action in Icon widget.
  ApiCallResponse? apiResultRelatorioFiltroCopyCopy;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
    headerModel = createModel(context, () => HeaderModel());
    datePickerModel1 = createModel(context, () => DatePickerModel());
    datePickerModel2 = createModel(context, () => DatePickerModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    headerModel.dispose();
    datePickerModel1.dispose();
    datePickerModel2.dispose();
  }
}
