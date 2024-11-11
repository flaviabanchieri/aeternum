// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RelatorioStruct extends BaseStruct {
  RelatorioStruct({
    int? totalLigacoes,
    int? tempoTotal,
    double? tempoMedio,
    double? somaValoresAprovados,
  })  : _totalLigacoes = totalLigacoes,
        _tempoTotal = tempoTotal,
        _tempoMedio = tempoMedio,
        _somaValoresAprovados = somaValoresAprovados;

  // "totalLigacoes" field.
  int? _totalLigacoes;
  int get totalLigacoes => _totalLigacoes ?? 0;
  set totalLigacoes(int? val) => _totalLigacoes = val;

  void incrementTotalLigacoes(int amount) =>
      totalLigacoes = totalLigacoes + amount;

  bool hasTotalLigacoes() => _totalLigacoes != null;

  // "tempoTotal" field.
  int? _tempoTotal;
  int get tempoTotal => _tempoTotal ?? 0;
  set tempoTotal(int? val) => _tempoTotal = val;

  void incrementTempoTotal(int amount) => tempoTotal = tempoTotal + amount;

  bool hasTempoTotal() => _tempoTotal != null;

  // "tempoMedio" field.
  double? _tempoMedio;
  double get tempoMedio => _tempoMedio ?? 0.0;
  set tempoMedio(double? val) => _tempoMedio = val;

  void incrementTempoMedio(double amount) => tempoMedio = tempoMedio + amount;

  bool hasTempoMedio() => _tempoMedio != null;

  // "somaValoresAprovados" field.
  double? _somaValoresAprovados;
  double get somaValoresAprovados => _somaValoresAprovados ?? 0.0;
  set somaValoresAprovados(double? val) => _somaValoresAprovados = val;

  void incrementSomaValoresAprovados(double amount) =>
      somaValoresAprovados = somaValoresAprovados + amount;

  bool hasSomaValoresAprovados() => _somaValoresAprovados != null;

  static RelatorioStruct fromMap(Map<String, dynamic> data) => RelatorioStruct(
        totalLigacoes: castToType<int>(data['totalLigacoes']),
        tempoTotal: castToType<int>(data['tempoTotal']),
        tempoMedio: castToType<double>(data['tempoMedio']),
        somaValoresAprovados: castToType<double>(data['somaValoresAprovados']),
      );

  static RelatorioStruct? maybeFromMap(dynamic data) => data is Map
      ? RelatorioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'totalLigacoes': _totalLigacoes,
        'tempoTotal': _tempoTotal,
        'tempoMedio': _tempoMedio,
        'somaValoresAprovados': _somaValoresAprovados,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'totalLigacoes': serializeParam(
          _totalLigacoes,
          ParamType.int,
        ),
        'tempoTotal': serializeParam(
          _tempoTotal,
          ParamType.int,
        ),
        'tempoMedio': serializeParam(
          _tempoMedio,
          ParamType.double,
        ),
        'somaValoresAprovados': serializeParam(
          _somaValoresAprovados,
          ParamType.double,
        ),
      }.withoutNulls;

  static RelatorioStruct fromSerializableMap(Map<String, dynamic> data) =>
      RelatorioStruct(
        totalLigacoes: deserializeParam(
          data['totalLigacoes'],
          ParamType.int,
          false,
        ),
        tempoTotal: deserializeParam(
          data['tempoTotal'],
          ParamType.int,
          false,
        ),
        tempoMedio: deserializeParam(
          data['tempoMedio'],
          ParamType.double,
          false,
        ),
        somaValoresAprovados: deserializeParam(
          data['somaValoresAprovados'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RelatorioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RelatorioStruct &&
        totalLigacoes == other.totalLigacoes &&
        tempoTotal == other.tempoTotal &&
        tempoMedio == other.tempoMedio &&
        somaValoresAprovados == other.somaValoresAprovados;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([totalLigacoes, tempoTotal, tempoMedio, somaValoresAprovados]);
}

RelatorioStruct createRelatorioStruct({
  int? totalLigacoes,
  int? tempoTotal,
  double? tempoMedio,
  double? somaValoresAprovados,
}) =>
    RelatorioStruct(
      totalLigacoes: totalLigacoes,
      tempoTotal: tempoTotal,
      tempoMedio: tempoMedio,
      somaValoresAprovados: somaValoresAprovados,
    );
