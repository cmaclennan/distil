import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'fermentation_add_widget.dart' show FermentationAddWidget;
import 'package:flutter/material.dart';

class FermentationAddModel extends FlutterFlowModel<FermentationAddWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DateFilled widget.
  FocusNode? dateFilledFocusNode;
  TextEditingController? dateFilledTextController;
  String? Function(BuildContext, String?)? dateFilledTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Day widget.
  FocusNode? dayFocusNode;
  TextEditingController? dayTextController;
  String? Function(BuildContext, String?)? dayTextControllerValidator;
  var barcodeScan = '';
  // State field(s) for Batch widget.
  FocusNode? batchFocusNode;
  TextEditingController? batchTextController;
  String? Function(BuildContext, String?)? batchTextControllerValidator;
  // State field(s) for Substrate widget.
  FocusNode? substrateFocusNode;
  TextEditingController? substrateTextController;
  String? Function(BuildContext, String?)? substrateTextControllerValidator;
  // State field(s) for SubstrateName widget.
  FocusNode? substrateNameFocusNode;
  TextEditingController? substrateNameTextController;
  String? Function(BuildContext, String?)? substrateNameTextControllerValidator;
  // State field(s) for SubstrateVol widget.
  FocusNode? substrateVolFocusNode;
  TextEditingController? substrateVolTextController;
  String? Function(BuildContext, String?)? substrateVolTextControllerValidator;
  // State field(s) for WaterVol widget.
  FocusNode? waterVolFocusNode;
  TextEditingController? waterVolTextController;
  String? Function(BuildContext, String?)? waterVolTextControllerValidator;
  // State field(s) for dunderBatch widget.
  FocusNode? dunderBatchFocusNode;
  TextEditingController? dunderBatchTextController;
  String? Function(BuildContext, String?)? dunderBatchTextControllerValidator;
  // State field(s) for dundervol widget.
  FocusNode? dundervolFocusNode;
  TextEditingController? dundervolTextController;
  String? Function(BuildContext, String?)? dundervolTextControllerValidator;
  // State field(s) for dunderph widget.
  FocusNode? dunderphFocusNode;
  TextEditingController? dunderphTextController;
  String? Function(BuildContext, String?)? dunderphTextControllerValidator;
  // State field(s) for initbrix widget.
  FocusNode? initbrixFocusNode;
  TextEditingController? initbrixTextController;
  String? Function(BuildContext, String?)? initbrixTextControllerValidator;
  // State field(s) for initph widget.
  FocusNode? initphFocusNode;
  TextEditingController? initphTextController;
  String? Function(BuildContext, String?)? initphTextControllerValidator;
  // State field(s) for inittemp widget.
  FocusNode? inittempFocusNode;
  TextEditingController? inittempTextController;
  String? Function(BuildContext, String?)? inittempTextControllerValidator;
  // State field(s) for tempset widget.
  FocusNode? tempsetFocusNode;
  TextEditingController? tempsetTextController;
  String? Function(BuildContext, String?)? tempsetTextControllerValidator;
  // State field(s) for yeasttype widget.
  FocusNode? yeasttypeFocusNode;
  TextEditingController? yeasttypeTextController;
  String? Function(BuildContext, String?)? yeasttypeTextControllerValidator;
  // State field(s) for yeastadded widget.
  FocusNode? yeastaddedFocusNode;
  TextEditingController? yeastaddedTextController;
  String? Function(BuildContext, String?)? yeastaddedTextControllerValidator;
  // State field(s) for yeastrehydtemp widget.
  FocusNode? yeastrehydtempFocusNode;
  TextEditingController? yeastrehydtempTextController;
  String? Function(BuildContext, String?)?
      yeastrehydtempTextControllerValidator;
  // State field(s) for yeastreydtime widget.
  FocusNode? yeastreydtimeFocusNode;
  TextEditingController? yeastreydtimeTextController;
  String? Function(BuildContext, String?)? yeastreydtimeTextControllerValidator;
  // State field(s) for chemsadded widget.
  FocusNode? chemsaddedFocusNode;
  TextEditingController? chemsaddedTextController;
  String? Function(BuildContext, String?)? chemsaddedTextControllerValidator;
  // State field(s) for nutrientsadded widget.
  FocusNode? nutrientsaddedFocusNode;
  TextEditingController? nutrientsaddedTextController;
  String? Function(BuildContext, String?)?
      nutrientsaddedTextControllerValidator;
  // State field(s) for temp24 widget.
  FocusNode? temp24FocusNode;
  TextEditingController? temp24TextController;
  String? Function(BuildContext, String?)? temp24TextControllerValidator;
  // State field(s) for brix24 widget.
  FocusNode? brix24FocusNode;
  TextEditingController? brix24TextController;
  String? Function(BuildContext, String?)? brix24TextControllerValidator;
  // State field(s) for ph24 widget.
  FocusNode? ph24FocusNode;
  TextEditingController? ph24TextController;
  String? Function(BuildContext, String?)? ph24TextControllerValidator;
  // State field(s) for sg24 widget.
  FocusNode? sg24FocusNode;
  TextEditingController? sg24TextController;
  String? Function(BuildContext, String?)? sg24TextControllerValidator;
  // State field(s) for temp48 widget.
  FocusNode? temp48FocusNode;
  TextEditingController? temp48TextController;
  String? Function(BuildContext, String?)? temp48TextControllerValidator;
  // State field(s) for brix48 widget.
  FocusNode? brix48FocusNode;
  TextEditingController? brix48TextController;
  String? Function(BuildContext, String?)? brix48TextControllerValidator;
  // State field(s) for ph48 widget.
  FocusNode? ph48FocusNode;
  TextEditingController? ph48TextController;
  String? Function(BuildContext, String?)? ph48TextControllerValidator;
  // State field(s) for sg48 widget.
  FocusNode? sg48FocusNode;
  TextEditingController? sg48TextController;
  String? Function(BuildContext, String?)? sg48TextControllerValidator;
  // State field(s) for temp72 widget.
  FocusNode? temp72FocusNode;
  TextEditingController? temp72TextController;
  String? Function(BuildContext, String?)? temp72TextControllerValidator;
  // State field(s) for brix72 widget.
  FocusNode? brix72FocusNode;
  TextEditingController? brix72TextController;
  String? Function(BuildContext, String?)? brix72TextControllerValidator;
  // State field(s) for ph72 widget.
  FocusNode? ph72FocusNode;
  TextEditingController? ph72TextController;
  String? Function(BuildContext, String?)? ph72TextControllerValidator;
  // State field(s) for sg72 widget.
  FocusNode? sg72FocusNode;
  TextEditingController? sg72TextController;
  String? Function(BuildContext, String?)? sg72TextControllerValidator;
  // State field(s) for temp96 widget.
  FocusNode? temp96FocusNode;
  TextEditingController? temp96TextController;
  String? Function(BuildContext, String?)? temp96TextControllerValidator;
  // State field(s) for brix96 widget.
  FocusNode? brix96FocusNode;
  TextEditingController? brix96TextController;
  String? Function(BuildContext, String?)? brix96TextControllerValidator;
  // State field(s) for ph96 widget.
  FocusNode? ph96FocusNode;
  TextEditingController? ph96TextController;
  String? Function(BuildContext, String?)? ph96TextControllerValidator;
  // State field(s) for sg96 widget.
  FocusNode? sg96FocusNode;
  TextEditingController? sg96TextController;
  String? Function(BuildContext, String?)? sg96TextControllerValidator;
  // State field(s) for temp120 widget.
  FocusNode? temp120FocusNode;
  TextEditingController? temp120TextController;
  String? Function(BuildContext, String?)? temp120TextControllerValidator;
  // State field(s) for brix120 widget.
  FocusNode? brix120FocusNode;
  TextEditingController? brix120TextController;
  String? Function(BuildContext, String?)? brix120TextControllerValidator;
  // State field(s) for ph120 widget.
  FocusNode? ph120FocusNode;
  TextEditingController? ph120TextController;
  String? Function(BuildContext, String?)? ph120TextControllerValidator;
  // State field(s) for sg120 widget.
  FocusNode? sg120FocusNode;
  TextEditingController? sg120TextController;
  String? Function(BuildContext, String?)? sg120TextControllerValidator;
  // State field(s) for tempfinal widget.
  FocusNode? tempfinalFocusNode;
  TextEditingController? tempfinalTextController;
  String? Function(BuildContext, String?)? tempfinalTextControllerValidator;
  // State field(s) for brixfinal widget.
  FocusNode? brixfinalFocusNode;
  TextEditingController? brixfinalTextController;
  String? Function(BuildContext, String?)? brixfinalTextControllerValidator;
  // State field(s) for phfinal widget.
  FocusNode? phfinalFocusNode;
  TextEditingController? phfinalTextController;
  String? Function(BuildContext, String?)? phfinalTextControllerValidator;
  // State field(s) for sgfinal widget.
  FocusNode? sgfinalFocusNode;
  TextEditingController? sgfinalTextController;
  String? Function(BuildContext, String?)? sgfinalTextControllerValidator;
  // State field(s) for alcoholcontent widget.
  FocusNode? alcoholcontentFocusNode;
  TextEditingController? alcoholcontentTextController;
  String? Function(BuildContext, String?)?
      alcoholcontentTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController46;
  String? Function(BuildContext, String?)? textController46Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dateFilledFocusNode?.dispose();
    dateFilledTextController?.dispose();

    dayFocusNode?.dispose();
    dayTextController?.dispose();

    batchFocusNode?.dispose();
    batchTextController?.dispose();

    substrateFocusNode?.dispose();
    substrateTextController?.dispose();

    substrateNameFocusNode?.dispose();
    substrateNameTextController?.dispose();

    substrateVolFocusNode?.dispose();
    substrateVolTextController?.dispose();

    waterVolFocusNode?.dispose();
    waterVolTextController?.dispose();

    dunderBatchFocusNode?.dispose();
    dunderBatchTextController?.dispose();

    dundervolFocusNode?.dispose();
    dundervolTextController?.dispose();

    dunderphFocusNode?.dispose();
    dunderphTextController?.dispose();

    initbrixFocusNode?.dispose();
    initbrixTextController?.dispose();

    initphFocusNode?.dispose();
    initphTextController?.dispose();

    inittempFocusNode?.dispose();
    inittempTextController?.dispose();

    tempsetFocusNode?.dispose();
    tempsetTextController?.dispose();

    yeasttypeFocusNode?.dispose();
    yeasttypeTextController?.dispose();

    yeastaddedFocusNode?.dispose();
    yeastaddedTextController?.dispose();

    yeastrehydtempFocusNode?.dispose();
    yeastrehydtempTextController?.dispose();

    yeastreydtimeFocusNode?.dispose();
    yeastreydtimeTextController?.dispose();

    chemsaddedFocusNode?.dispose();
    chemsaddedTextController?.dispose();

    nutrientsaddedFocusNode?.dispose();
    nutrientsaddedTextController?.dispose();

    temp24FocusNode?.dispose();
    temp24TextController?.dispose();

    brix24FocusNode?.dispose();
    brix24TextController?.dispose();

    ph24FocusNode?.dispose();
    ph24TextController?.dispose();

    sg24FocusNode?.dispose();
    sg24TextController?.dispose();

    temp48FocusNode?.dispose();
    temp48TextController?.dispose();

    brix48FocusNode?.dispose();
    brix48TextController?.dispose();

    ph48FocusNode?.dispose();
    ph48TextController?.dispose();

    sg48FocusNode?.dispose();
    sg48TextController?.dispose();

    temp72FocusNode?.dispose();
    temp72TextController?.dispose();

    brix72FocusNode?.dispose();
    brix72TextController?.dispose();

    ph72FocusNode?.dispose();
    ph72TextController?.dispose();

    sg72FocusNode?.dispose();
    sg72TextController?.dispose();

    temp96FocusNode?.dispose();
    temp96TextController?.dispose();

    brix96FocusNode?.dispose();
    brix96TextController?.dispose();

    ph96FocusNode?.dispose();
    ph96TextController?.dispose();

    sg96FocusNode?.dispose();
    sg96TextController?.dispose();

    temp120FocusNode?.dispose();
    temp120TextController?.dispose();

    brix120FocusNode?.dispose();
    brix120TextController?.dispose();

    ph120FocusNode?.dispose();
    ph120TextController?.dispose();

    sg120FocusNode?.dispose();
    sg120TextController?.dispose();

    tempfinalFocusNode?.dispose();
    tempfinalTextController?.dispose();

    brixfinalFocusNode?.dispose();
    brixfinalTextController?.dispose();

    phfinalFocusNode?.dispose();
    phfinalTextController?.dispose();

    sgfinalFocusNode?.dispose();
    sgfinalTextController?.dispose();

    alcoholcontentFocusNode?.dispose();
    alcoholcontentTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController46?.dispose();
  }
}
