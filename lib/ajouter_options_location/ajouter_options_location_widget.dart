import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AjouterOptionsLocationWidget extends StatefulWidget {
  const AjouterOptionsLocationWidget({
    Key? key,
    this.marque,
    this.transmission,
    this.prix,
    this.gerant,
    this.vehicule,
    this.prixTotal,
    this.dateDebut,
    this.nbJour,
  }) : super(key: key);

  final String? marque;
  final String? transmission;
  final int? prix;
  final DocumentReference? gerant;
  final DocumentReference? vehicule;
  final int? prixTotal;
  final DateTime? dateDebut;
  final int? nbJour;

  @override
  _AjouterOptionsLocationWidgetState createState() =>
      _AjouterOptionsLocationWidgetState();
}

class _AjouterOptionsLocationWidgetState
    extends State<AjouterOptionsLocationWidget> {
  String? chauffeurValue;
  String? faireLePleinValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AjouterOptions_Location'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 21, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'AJOUTER_OPTIONS_LOCATION_Card_jc82wg5o_O');
                              logFirebaseEvent('Card_navigate_back');
                              context.pop();
                            },
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFF3A44E9),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Icon(
                                Icons.chevron_left,
                                color: FlutterFlowTheme.of(context).theFourth,
                                size: 28,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Louer',
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'San fransisco',
                                        color: Color(0xFF090F13),
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(21, 0, 0, 0),
                            child: Text(
                              'Ajouter d\'autres options a votre location.',
                              style: FlutterFlowTheme.of(context)
                                  .title2
                                  .override(
                                    fontFamily: 'San fransisco',
                                    color: FlutterFlowTheme.of(context).sixx,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 12),
                      child: Container(
                        width: 328,
                        height: 105,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 21,
                              color: Color(0x14000000),
                              offset: Offset(0, 5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 12, 0, 0),
                                    child: Text(
                                      'Ajouter un chauffeur',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'San fransisco',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 12,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 8,
                                endIndent: 8,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 5, 0, 12),
                                  child: FlutterFlowChoiceChips(
                                    initiallySelected: ['Aucun chauffeur'],
                                    options: [
                                      ChipData('Chauffeur'),
                                      ChipData('Aucun chauffeur')
                                    ],
                                    onChanged: (val) => setState(
                                        () => chauffeurValue = val?.first),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor: Color(0xFF1E2429),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      iconColor: Colors.white,
                                      iconSize: 18,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              8, 4, 8, 4),
                                      elevation: 4,
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      iconColor: Color(0xFF95A1AC),
                                      iconSize: 18,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              8, 4, 8, 4),
                                      elevation: 2,
                                    ),
                                    chipSpacing: 12,
                                    multiselect: false,
                                    initialized: chauffeurValue != null,
                                    alignment: WrapAlignment.start,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Container(
                        width: 328,
                        height: 155,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 21,
                              color: Color(0x14000000),
                              offset: Offset(0, 5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 12, 0, 0),
                                    child: Text(
                                      'Ajouter du carburant',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'San fransisco',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 12,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 8,
                                endIndent: 8,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 12, 0, 0),
                                  child: FlutterFlowChoiceChips(
                                    initiallySelected: ['Pas de plein'],
                                    options: [
                                      ChipData('05L', Icons.local_gas_station),
                                      ChipData('10L', Icons.local_gas_station),
                                      ChipData('15L', Icons.local_gas_station),
                                      ChipData('35L', Icons.local_gas_station),
                                      ChipData('50L', Icons.local_gas_station),
                                      ChipData('Pas de plein')
                                    ],
                                    onChanged: (val) => setState(
                                        () => faireLePleinValue = val?.first),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor: Color(0xFF1D2429),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      iconColor: Colors.white,
                                      iconSize: 24,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              5, 5, 5, 5),
                                      elevation: 4,
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      iconColor: Color(0xE2262D34),
                                      iconSize: 24,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 8, 12, 8),
                                      elevation: 2,
                                    ),
                                    chipSpacing: 12,
                                    rowSpacing: 8,
                                    multiselect: false,
                                    initialized: faireLePleinValue != null,
                                    alignment: WrapAlignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 89, 0, 12),
                      child: Container(
                        width: 328,
                        height: 112,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 21,
                              color: Color(0x36000000),
                              offset: Offset(0, 5),
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 2,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 12, 0, 0),
                                    child: Text(
                                      'Resumé de la commande',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'San fransisco',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 12,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 8,
                                endIndent: 8,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Base Price',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'San fransisco',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      '${formatNumber(
                                        widget.prix,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.commaDecimal,
                                      )} fr CFA',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'San fransisco',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 8, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'prix Total',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'San fransisco',
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      '${widget.prixTotal?.toString()} fr CFA',
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'San fransisco',
                                            color: Color(0xFF090F13),
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Color(0xFF175EFB),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x55000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'AJOUTER_OPTIONS_LOCATION_PROCEDER_AU_PAY');
                    logFirebaseEvent('Button_navigate_to');

                    context.pushNamed(
                      'PaymentCheckout_Location',
                      queryParams: {
                        'carburant': serializeParam(
                          faireLePleinValue,
                          ParamType.String,
                        ),
                        'chauffeur': serializeParam(
                          chauffeurValue == 'chauffeur' ? true : true,
                          ParamType.bool,
                        ),
                        'dateDebut': serializeParam(
                          widget.dateDebut,
                          ParamType.DateTime,
                        ),
                        'vehicule': serializeParam(
                          widget.vehicule,
                          ParamType.DocumentReference,
                        ),
                        'prixTotal': serializeParam(
                          widget.prixTotal,
                          ParamType.int,
                        ),
                        'nbJour': serializeParam(
                          widget.nbJour,
                          ParamType.int,
                        ),
                        'prix': serializeParam(
                          widget.prix,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'Proceder au payment',
                  icon: FaIcon(
                    FontAwesomeIcons.dollarSign,
                  ),
                  options: FFButtonOptions(
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'San fransisco',
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: false,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
