import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'melgar_model.dart';
export 'melgar_model.dart';

class MelgarWidget extends StatefulWidget {
  const MelgarWidget({Key? key}) : super(key: key);

  @override
  _MelgarWidgetState createState() => _MelgarWidgetState();
}

class _MelgarWidgetState extends State<MelgarWidget> {
  late MelgarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MelgarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Elije tu horario',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: FlutterFlowChoiceChips(
                      options: [
                        ChipData('9:00-10:00'),
                        ChipData('10:00-11:00'),
                        ChipData('11:00-12:00'),
                        ChipData('12:00-13:00'),
                        ChipData('13:00-14:00'),
                        ChipData('14:00-15:00'),
                        ChipData('15:00-16:00'),
                        ChipData('16:00-17:00'),
                        ChipData('17:00-18:00'),
                        ChipData('18:00-19:00'),
                        ChipData('19:00-20:00'),
                        ChipData('20:00-21:00'),
                        ChipData('21:00-22:00'),
                        ChipData('22:00-23:00')
                      ],
                      onChanged: (val) =>
                          setState(() => _model.horariosValue = val?.first),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context).titleSmall,
                        iconColor: Colors.white,
                        iconSize: 18.0,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                        elevation: 2.0,
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).alternate,
                        textStyle: FlutterFlowTheme.of(context).labelMedium,
                        iconColor: FlutterFlowTheme.of(context).primaryText,
                        iconSize: 18.0,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                        elevation: 0.0,
                      ),
                      chipSpacing: 12.0,
                      rowSpacing: 12.0,
                      multiselect: false,
                      alignment: WrapAlignment.start,
                      controller: _model.horariosValueController ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                    ),
                  ),
                  Divider(
                    height: 36.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
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
                onPressed: () {
                  print('Boton_guardar pressed ...');
                },
                text: 'Separar',
                options: FFButtonOptions(
                  width: 130.0,
                  height: 80.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).displaySmall.override(
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
  }
}
