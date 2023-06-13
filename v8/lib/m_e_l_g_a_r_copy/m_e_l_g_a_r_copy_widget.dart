import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_e_l_g_a_r_copy_model.dart';
export 'm_e_l_g_a_r_copy_model.dart';

class MELGARCopyWidget extends StatefulWidget {
  const MELGARCopyWidget({Key? key}) : super(key: key);

  @override
  _MELGARCopyWidgetState createState() => _MELGARCopyWidgetState();
}

class _MELGARCopyWidgetState extends State<MELGARCopyWidget> {
  late MELGARCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MELGARCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<HorariosRecord>>(
      stream: queryHorariosRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<HorariosRecord> mELGARCopyHorariosRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('HomeCanchas');
              },
            ),
            title: Text(
              'MELGAR',
              style: FlutterFlowTheme.of(context).headlineMedium,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://static.wixstatic.com/media/a74d9b_f677ff68338f43cf87e470b0312b7cea~mv2.jpg/v1/fill/w_1000,h_563,al_c,q_85,usm_0.66_1.00_0.01/a74d9b_f677ff68338f43cf87e470b0312b7cea~mv2.jpg',
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 250.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Estacionamiento',
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Estadio MELGAR, Arequipa 04001',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      Divider(
                        height: 36.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'MES:',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.mesValueController ??=
                            FormFieldController<String>(
                          _model.mesValue ??= '',
                        ),
                        options: [
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10',
                          '11',
                          '12'
                        ],
                        optionLabels: [
                          'enero',
                          'febrero',
                          'marzo',
                          'abril',
                          'mayo',
                          'junio',
                          'julio',
                          'agosto',
                          'septiembre',
                          'octubre',
                          'noviembre',
                          'diciembre'
                        ],
                        onChanged: (val) async {
                          setState(() => _model.mesValue = val);
                          final horariosCreateData = createHorariosRecordData(
                            checkH: false,
                            mesH: _model.mesValue,
                            diaH: _model.diaValue,
                          );
                          await HorariosRecord.collection
                              .doc()
                              .set(horariosCreateData);
                        },
                        width: 300.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'DIA:',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.diaValueController ??=
                            FormFieldController<String>(
                          _model.diaValue ??= '',
                        ),
                        options: [
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10',
                          '11',
                          '12',
                          '13',
                          '14',
                          '15',
                          '16',
                          '17',
                          '18',
                          '19',
                          '20',
                          '21',
                          '22',
                          '23',
                          '24',
                          '25',
                          '26',
                          '27',
                          '28',
                          '29',
                          '30',
                          '31'
                        ],
                        optionLabels: [
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10',
                          '11',
                          '12',
                          '13',
                          '14',
                          '15',
                          '16',
                          '17',
                          '18',
                          '19',
                          '20',
                          '21',
                          '22',
                          '23',
                          '24',
                          '25',
                          '26',
                          '27',
                          '28',
                          '29',
                          '30',
                          '31'
                        ],
                        onChanged: (val) async {
                          setState(() => _model.diaValue = val);
                          final horariosCreateData = createHorariosRecordData(
                            checkH: true,
                            mesH: _model.mesValue,
                            diaH: _model.diaValue,
                          );
                          await HorariosRecord.collection
                              .doc()
                              .set(horariosCreateData);
                        },
                        width: 300.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'HORA:',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.horaValueController ??=
                            FormFieldController<String>(
                          _model.horaValue ??= '',
                        ),
                        options: [
                          '10',
                          '11',
                          '12',
                          '13',
                          '14',
                          '15',
                          '16',
                          '17',
                          '18',
                          '19',
                          '20',
                          '21'
                        ],
                        optionLabels: [
                          '10:00-11:00',
                          '11:00-12:00',
                          '12:00-13:00',
                          '13:00-14:00',
                          '14:00-15:00',
                          '15:00-16:00',
                          '16:00-17:00',
                          '17:00-18:00',
                          '18:00-19:00',
                          '19:00-20:00',
                          '20:00-21:00',
                          '21:00-22:00'
                        ],
                        onChanged: (val) async {
                          setState(() => _model.horaValue = val);
                          final horariosCreateData = createHorariosRecordData(
                            checkH: true,
                            mesH: _model.mesValue,
                            diaH: _model.diaValue,
                          );
                          await HorariosRecord.collection
                              .doc()
                              .set(horariosCreateData);
                        },
                        width: 300.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Precio por hora DIA',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                            Text(
                              '\$40.00',
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 12.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Precio por hora NOCHE',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                            Text(
                              '\$70.00',
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x55000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 34.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final horariosCreateData = createHorariosRecordData(
                        checkH: false,
                        mesH: _model.mesValue,
                        diaH: _model.diaValue,
                      );
                      await HorariosRecord.collection
                          .doc()
                          .set(horariosCreateData);
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('FELICIDADES!'),
                            content: Text('Tu horario a sido separado'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    text: 'Separar',
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).displaySmall.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).info,
                                fontSize: 20.0,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
