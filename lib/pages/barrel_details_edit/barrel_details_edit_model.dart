import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'barrel_details_edit_widget.dart' show BarrelDetailsEditWidget;
import 'package:flutter/material.dart';

class BarrelDetailsEditModel extends FlutterFlowModel<BarrelDetailsEditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for date_filled widget.
  FocusNode? dateFilledFocusNode;
  TextEditingController? dateFilledTextController;
  String? Function(BuildContext, String?)? dateFilledTextControllerValidator;
  // State field(s) for batch widget.
  FocusNode? batchFocusNode;
  TextEditingController? batchTextController;
  String? Function(BuildContext, String?)? batchTextControllerValidator;
  // State field(s) for volume widget.
  FocusNode? volumeFocusNode;
  TextEditingController? volumeTextController;
  String? Function(BuildContext, String?)? volumeTextControllerValidator;
  // State field(s) for abv widget.
  FocusNode? abvFocusNode;
  TextEditingController? abvTextController;
  String? Function(BuildContext, String?)? abvTextControllerValidator;
  // State field(s) for DropDownSpirit widget.
  String? dropDownSpiritValue;
  FormFieldController<String>? dropDownSpiritValueController;
  // State field(s) for DropDownBarrel widget.
  String? dropDownBarrelValue;
  FormFieldController<String>? dropDownBarrelValueController;
  // State field(s) for DropDownPrevSpirit widget.
  String? dropDownPrevSpiritValue1;
  FormFieldController<String>? dropDownPrevSpiritValueController1;
  // State field(s) for est_mature widget.
  FocusNode? estMatureFocusNode;
  TextEditingController? estMatureTextController;
  String? Function(BuildContext, String?)? estMatureTextControllerValidator;
  // State field(s) for tasting_notes widget.
  FocusNode? tastingNotesFocusNode;
  TextEditingController? tastingNotesTextController;
  String? Function(BuildContext, String?)? tastingNotesTextControllerValidator;
  // State field(s) for notes_comments widget.
  FocusNode? notesCommentsFocusNode;
  TextEditingController? notesCommentsTextController;
  String? Function(BuildContext, String?)? notesCommentsTextControllerValidator;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for angel widget.
  FocusNode? angelFocusNode;
  TextEditingController? angelTextController;
  String? Function(BuildContext, String?)? angelTextControllerValidator;
  // State field(s) for last_insp widget.
  FocusNode? lastInspFocusNode;
  TextEditingController? lastInspTextController;
  String? Function(BuildContext, String?)? lastInspTextControllerValidator;
  // State field(s) for DropDownPrevSpirit widget.
  String? dropDownPrevSpiritValue2;
  FormFieldController<String>? dropDownPrevSpiritValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dateFilledFocusNode?.dispose();
    dateFilledTextController?.dispose();

    batchFocusNode?.dispose();
    batchTextController?.dispose();

    volumeFocusNode?.dispose();
    volumeTextController?.dispose();

    abvFocusNode?.dispose();
    abvTextController?.dispose();

    estMatureFocusNode?.dispose();
    estMatureTextController?.dispose();

    tastingNotesFocusNode?.dispose();
    tastingNotesTextController?.dispose();

    notesCommentsFocusNode?.dispose();
    notesCommentsTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    angelFocusNode?.dispose();
    angelTextController?.dispose();

    lastInspFocusNode?.dispose();
    lastInspTextController?.dispose();
  }
}
