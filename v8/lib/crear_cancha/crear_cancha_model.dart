import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearCanchaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nombreCANCHA widget.
  TextEditingController? nombreCANCHAController;
  String? Function(BuildContext, String?)? nombreCANCHAControllerValidator;
  // State field(s) for precio widget.
  TextEditingController? precioController;
  String? Function(BuildContext, String?)? precioControllerValidator;
  // State field(s) for descripcion widget.
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreCANCHAController?.dispose();
    precioController?.dispose();
    descripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
