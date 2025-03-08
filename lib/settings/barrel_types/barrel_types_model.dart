import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'barrel_types_widget.dart' show BarrelTypesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BarrelTypesModel extends FlutterFlowModel<BarrelTypesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for BarrelType widget.
  FocusNode? barrelTypeFocusNode;
  TextEditingController? barrelTypeTextController;
  String? Function(BuildContext, String?)? barrelTypeTextControllerValidator;
  Completer<List<BarrelRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    barrelTypeFocusNode?.dispose();
    barrelTypeTextController?.dispose();
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
