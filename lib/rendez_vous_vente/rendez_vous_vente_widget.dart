import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RendezVousVenteWidget extends StatefulWidget {
  const RendezVousVenteWidget({
    Key key,
    this.leclient,
    this.carvente,
    this.gerant,
  }) : super(key: key);

  final DocumentReference leclient;
  final DocumentReference carvente;
  final DocumentReference gerant;

  @override
  _RendezVousVenteWidgetState createState() => _RendezVousVenteWidgetState();
}

class _RendezVousVenteWidgetState extends State<RendezVousVenteWidget> {
  DateTimeRange calendarSelectedDay;
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    textController = TextEditingController(text: '+225');
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RendezVousVente'});
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
            snapshot.data;
        final rendezVousVenteCommandeVenteRecord =
            rendezVousVenteCommandeVenteRecordList.isNotEmpty
                ? rendezVousVenteCommandeVenteRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('RENDEZ_VOUS_VENTE_chevron_left_ICN_ON_TA');
                logFirebaseEvent('IconButton_Navigate-Back');
                context.pop();
              },
            ),
            title: Text(
              'Rendez-vous',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'San fransisco',
                    color: Colors.black,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
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
                                EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
                            child: Text(
                              'choisissez une date',
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'San fransisco',
                                        color: Color(0xFF090F13),
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 21, 0, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: Color(0x0000003A),
                                        ),
                                      ),
                                      child: FlutterFlowCalendar(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        weekFormat: false,
                                        weekStartsMonday: false,
                                        initialDate: getCurrentTimestamp,
                                        onChange:
                                            (DateTimeRange newSelectedDate) {
                                          setState(() => calendarSelectedDay =
                                              newSelectedDate);
                                        },
                                        titleStyle: TextStyle(),
                                        dayOfWeekStyle: TextStyle(),
                                        dateStyle: TextStyle(),
                                        selectedDateStyle: TextStyle(),
                                        inactiveDateStyle: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                                    21, 8, 21, 0),
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
                                                      BorderRadius.circular(16),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xC48B97A2),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'San fransisco',
                                                    color: Color(0xFF202020),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              textAlign: TextAlign.start,
                                              keyboardType:
                                                  TextInputType.number,
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
                                logFirebaseEvent('Button_Backend-Call');

                                final commandeVenteCreateData =
                                    createCommandeVenteRecordData(
                                  date: calendarSelectedDay?.start,
                                  client: widget.leclient,
                                  vehicule: widget.carvente,
                                  gerant: widget.gerant,
                                );
                                await CommandeVenteRecord.collection
                                    .doc()
                                    .set(commandeVenteCreateData);
                                logFirebaseEvent('Button_Backend-Call');

                                final usersUpdateData = createUsersRecordData(
                                  phoneNumber: textController.text,
                                );
                                await currentUserReference
                                    .update(usersUpdateData);
                                logFirebaseEvent('Button_Navigate-To');
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
                              },
                              text: 'confirmer',
                              options: FFButtonOptions(
                                width: 130,
                                height: 50,
                                color: Color(0xFF175EFB),
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
