import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'barrel_management_widget.dart' show BarrelManagementWidget;
import 'package:flutter/material.dart';

class BarrelManagementModel extends FlutterFlowModel<BarrelManagementWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for BarrelID widget.
  FocusNode? barrelIDFocusNode;
  TextEditingController? barrelIDTextController;
  String? Function(BuildContext, String?)? barrelIDTextControllerValidator;
  var barcodeScan = '';
  // State field(s) for BarrelIDOld widget.
  FocusNode? barrelIDOldFocusNode;
  TextEditingController? barrelIDOldTextController;
  String? Function(BuildContext, String?)? barrelIDOldTextControllerValidator;
  // State field(s) for FillBatch widget.
  FocusNode? fillBatchFocusNode;
  TextEditingController? fillBatchTextController;
  String? Function(BuildContext, String?)? fillBatchTextControllerValidator;
  // State field(s) for Volume widget.
  FocusNode? volumeFocusNode;
  TextEditingController? volumeTextController;
  String? Function(BuildContext, String?)? volumeTextControllerValidator;
  // State field(s) for ABV widget.
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
  String? dropDownPrevSpiritValue;
  FormFieldController<String>? dropDownPrevSpiritValueController;
  // State field(s) for DateFilled widget.
  FocusNode? dateFilledFocusNode;
  TextEditingController? dateFilledTextController;
  String? Function(BuildContext, String?)? dateFilledTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for DateMature widget.
  FocusNode? dateMatureFocusNode;
  TextEditingController? dateMatureTextController;
  String? Function(BuildContext, String?)? dateMatureTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for DropDownLocation widget.
  String? dropDownLocationValue;
  FormFieldController<String>? dropDownLocationValueController;
  // State field(s) for TastingNotes widget.
  FocusNode? tastingNotesFocusNode;
  TextEditingController? tastingNotesTextController;
  String? Function(BuildContext, String?)? tastingNotesTextControllerValidator;
  // State field(s) for AngelsShare widget.
  FocusNode? angelsShareFocusNode;
  TextEditingController? angelsShareTextController;
  String? Function(BuildContext, String?)? angelsShareTextControllerValidator;
  // State field(s) for DropDownStatus widget.
  String? dropDownStatusValue;
  FormFieldController<String>? dropDownStatusValueController;
  // State field(s) for DateLastInspection widget.
  FocusNode? dateLastInspectionFocusNode;
  TextEditingController? dateLastInspectionTextController;
  String? Function(BuildContext, String?)?
      dateLastInspectionTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    barrelIDFocusNode?.dispose();
    barrelIDTextController?.dispose();

    barrelIDOldFocusNode?.dispose();
    barrelIDOldTextController?.dispose();

    fillBatchFocusNode?.dispose();
    fillBatchTextController?.dispose();

    volumeFocusNode?.dispose();
    volumeTextController?.dispose();

    abvFocusNode?.dispose();
    abvTextController?.dispose();

    dateFilledFocusNode?.dispose();
    dateFilledTextController?.dispose();

    dateMatureFocusNode?.dispose();
    dateMatureTextController?.dispose();

    tastingNotesFocusNode?.dispose();
    tastingNotesTextController?.dispose();

    angelsShareFocusNode?.dispose();
    angelsShareTextController?.dispose();

    dateLastInspectionFocusNode?.dispose();
    dateLastInspectionTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController11?.dispose();
  }
}
