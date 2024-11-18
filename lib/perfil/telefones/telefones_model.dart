import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets_compartilhados/header/header_widget.dart';
import '/widgets_compartilhados/sidenav/sidenav_widget.dart';
import 'dart:async';
import 'telefones_widget.dart' show TelefonesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TelefonesModel extends FlutterFlowModel<TelefonesWidget> {
  ///  Local state fields for this page.

  String? erro;

  String? msgErro;

  bool? semLancamentos = false;

  int? countConfiguracoes = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in telefones widget.
  List<ConfiguracoesRow>? queryConfiguracoes;
  // Model for Sidenav component.
  late SidenavModel sidenavModel;
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for txtMesAno widget.
  FocusNode? txtMesAnoFocusNode;
  TextEditingController? txtMesAnoTextController;
  final txtMesAnoMask = MaskTextInputFormatter(mask: '##/####');
  String? Function(BuildContext, String?)? txtMesAnoTextControllerValidator;
  // State field(s) for textNumero widget.
  FocusNode? textNumeroFocusNode;
  TextEditingController? textNumeroTextController;
  final textNumeroMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textNumeroTextControllerValidator;
  // State field(s) for TextIdGoTo widget.
  FocusNode? textIdGoToFocusNode;
  TextEditingController? textIdGoToTextController;
  final textIdGoToMask = MaskTextInputFormatter(mask: '##/####');
  String? Function(BuildContext, String?)? textIdGoToTextControllerValidator;
  // Stores action output result for [Backend Call - API (phoneId)] action in Button widget.
  ApiCallResponse? apiResultspq;
  Completer<List<DDDNumbersRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (phoneId)] action in Icon widget.
  ApiCallResponse? apiResultspqCopy;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    headerModel.dispose();
    txtMesAnoFocusNode?.dispose();
    txtMesAnoTextController?.dispose();

    textNumeroFocusNode?.dispose();
    textNumeroTextController?.dispose();

    textIdGoToFocusNode?.dispose();
    textIdGoToTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
