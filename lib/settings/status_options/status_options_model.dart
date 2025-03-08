import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'status_options_widget.dart' show StatusOptionsWidget;
import 'package:flutter/material.dart';

class StatusOptionsModel extends FlutterFlowModel<StatusOptionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for StatusOpt widget.
  FocusNode? statusOptFocusNode;
  TextEditingController? statusOptTextController;
  String? Function(BuildContext, String?)? statusOptTextControllerValidator;
  Completer<List<StatusRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    statusOptFocusNode?.dispose();
    statusOptTextController?.dispose();
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
