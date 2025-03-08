import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'barrel_sizes_widget.dart' show BarrelSizesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BarrelSizesModel extends FlutterFlowModel<BarrelSizesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for BarrelSize widget.
  FocusNode? barrelSizeFocusNode;
  TextEditingController? barrelSizeTextController;
  String? Function(BuildContext, String?)? barrelSizeTextControllerValidator;
  Completer<List<SizeRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    barrelSizeFocusNode?.dispose();
    barrelSizeTextController?.dispose();
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
