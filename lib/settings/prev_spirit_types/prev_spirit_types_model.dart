import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'prev_spirit_types_widget.dart' show PrevSpiritTypesWidget;
import 'package:flutter/material.dart';

class PrevSpiritTypesModel extends FlutterFlowModel<PrevSpiritTypesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SpiritType widget.
  FocusNode? spiritTypeFocusNode;
  TextEditingController? spiritTypeTextController;
  String? Function(BuildContext, String?)? spiritTypeTextControllerValidator;
  Completer<List<SpiritPreviousRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    spiritTypeFocusNode?.dispose();
    spiritTypeTextController?.dispose();
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
