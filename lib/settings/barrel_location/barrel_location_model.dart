import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'barrel_location_widget.dart' show BarrelLocationWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BarrelLocationModel extends FlutterFlowModel<BarrelLocationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for BarrelLocations widget.
  FocusNode? barrelLocationsFocusNode;
  TextEditingController? barrelLocationsTextController;
  String? Function(BuildContext, String?)?
      barrelLocationsTextControllerValidator;
  Completer<List<LocationRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    barrelLocationsFocusNode?.dispose();
    barrelLocationsTextController?.dispose();
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
