import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/alerte_date_de_rendez_vous_widget.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RendezVousVenteWidget extends StatefulWidget {
  const RendezVousVenteWidget({
    Key? key,
    this.leclient,
    this.carvente,
    this.gerant,
  }) : super(key: key);

  final DocumentReference? leclient;
  final DocumentReference? carvente;
  final DocumentReference? gerant;

  @override
  _RendezVousVenteWidgetState createState() => _RendezVousVenteWidgetState();
}

class _RendezVousVenteWidgetState extends State<RendezVousVenteWidget> {
  CommandeVenteRecord? a1;
  DateTimeRange? calendarSelectedDay;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    textController = TextEditingController(
        text: valueOrDefault<String>(
      currentPhoneNumber,
      '+225',
    ));
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RendezVousVente'});
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CommandeVenteRecord>>(
      stream: queryCommandeVenteRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitPulse(
                color: Color(0xFF175EFB),
                size: 50,
              ),
            ),
          );
        }
        List<CommandeVenteRecord> rendezVousVenteCommandeVenteRecordList =
            snapshot.data!;
        final rendezVousVenteCommandeVenteRecord =
            rendezVousVenteCommandeVenteRecordList.isNotEmpty
                ? rendezVousVenteCommandeVenteRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 21, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'RENDEZ_VOUS_VENTE_Card_voqcypmu_ON_TAP');
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
                                      color: FlutterFlowTheme.of(context)
                                          .theFourth,
                                      size: 28,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Text(
                                    'Mes favoris',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'San fransisco',
                                          color: Color(0xFF090F13),
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 21, 0, 0),
                            child: Text(
                              'Prenez un rendez-vous avec le concessionnaire afin de finaliser l’achat de votre véhicule.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 55, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'choisissez une date',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'San fransisco',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: FlutterFlowCalendar(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              weekFormat: true,
                              weekStartsMonday: true,
                              initialDate: getCurrentTimestamp,
                              onChange: (DateTimeRange? newSelectedDate) {
                                setState(() =>
                                    calendarSelectedDay = newSelectedDate);
                              },
                              titleStyle:
                                  FlutterFlowTheme.of(context).subtitle1,
                              dayOfWeekStyle:
                                  FlutterFlowTheme.of(context).bodyText2,
                              dateStyle: FlutterFlowTheme.of(context).bodyText1,
                              selectedDateStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'San fransisco',
                                    color: Colors.white,
                                    useGoogleFonts: false,
                                  ),
                              inactiveDateStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'San fransisco',
                                    color: Color(0x6B57636C),
                                    useGoogleFonts: false,
                                  ),
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'Contact',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'San fransisco',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    31, 8, 21, 0),
                                            child: AuthUserStreamWidget(
                                              child: TextFormField(
                                                controller: textController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'numero  de telephone',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xC48B97A2),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xC48B97A2),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'San fransisco',
                                                          color:
                                                              Color(0xFF202020),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                textAlign: TextAlign.start,
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
                      decoration: BoxDecoration(
                        color: Color(0xFF14181B),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x55000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'le vendeur vous contacteras\napres confirmation',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'San fransisco',
                                          color: Color(0xFF8B97A2),
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'RENDEZ_VOUS_VENTE_CONFIRMER_BTN_ON_TAP');
                                var _shouldSetState = false;
                                logFirebaseEvent('Button_haptic_feedback');
                                HapticFeedback.heavyImpact();
                                if (functions.checkQueryDate(
                                    calendarSelectedDay?.start)) {
                                  logFirebaseEvent('Button_backend_call');

                                  final commandeVenteCreateData =
                                      createCommandeVenteRecordData(
                                    date: calendarSelectedDay?.start,
                                    client: widget.leclient,
                                    vehicule: widget.carvente,
                                    gerant: widget.gerant,
                                  );
                                  var commandeVenteRecordReference =
                                      CommandeVenteRecord.collection.doc();
                                  await commandeVenteRecordReference
                                      .set(commandeVenteCreateData);
                                  a1 = CommandeVenteRecord.getDocumentFromData(
                                      commandeVenteCreateData,
                                      commandeVenteRecordReference);
                                  _shouldSetState = true;
                                  logFirebaseEvent('Button_backend_call');

                                  final usersUpdateData = {
                                    ...createUsersRecordData(
                                      phoneNumber: textController!.text,
                                    ),
                                    'RendezVousList':
                                        FieldValue.arrayUnion([a1!.reference]),
                                  };
                                  await currentUserReference!
                                      .update(usersUpdateData);
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamed(
                                    'DoneVente',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 377),
                                      ),
                                    },
                                  );

                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  logFirebaseEvent('Button_bottom_sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: AlerteDateDeRendezVousWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                if (_shouldSetState) setState(() {});
                              },
                              text: 'confirmer',
                              options: FFButtonOptions(
                                width: 130,
                                height: 50,
                                color: Color(0xFF0915E3),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'San fransisco',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30),
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
        );
      },
    );
  }
}
