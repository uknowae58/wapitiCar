import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/alerte_date_de_rendez_vous_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
  DateTime? datePicked;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RendezVousVente'});
    textController = TextEditingController(
        text: valueOrDefault<String>(
      currentPhoneNumber,
      '+225',
    ));
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
                                EdgeInsetsDirectional.fromSTEB(12, 21, 0, 0),
                            child: Text(
                              'Prenez un rendez-vous avec le concessionnaire afin de finaliser l’achat de votre véhicule. Choisissez la date du rendez-vous, le concessionnaire vous contactera après\nconfirmation.',
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
                          StreamBuilder<UsersRecord>(
                            stream: UsersRecord.getDocument(
                                FFAppState().wapitiCar!),
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
                              final rowUsersRecord = snapshot.data!;
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'En cas de soucis contactez',
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        3, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'RENDEZ_VOUS_VENTE_Text_qyelsgzq_ON_TAP');
                                        logFirebaseEvent('Text_Navigate-To');
                                        context.pushNamed(
                                          'ChatMessage',
                                          queryParams: {
                                            'chatUser': serializeParam(
                                                rowUsersRecord,
                                                ParamType.Document),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'chatUser': rowUsersRecord,
                                          },
                                        );
                                      },
                                      child: Text(
                                        'wapiti car ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
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
                                EdgeInsetsDirectional.fromSTEB(31, 21, 24, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Date de rendez-vous',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'San fransisco',
                                        color:
                                            FlutterFlowTheme.of(context).five,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      29, 0, 0, 0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat('d/M H:mm', datePicked),
                                      '01/01 00:00',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color:
                                              FlutterFlowTheme.of(context).five,
                                        ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    color: Color(0x3A000000),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'RENDEZ_VOUS_VENTE_add_circle_outline_ICN');
                                    logFirebaseEvent(
                                        'IconButton_Date-Time-Picker');
                                    await DatePicker.showDateTimePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked = date);
                                      },
                                      currentTime: getCurrentTimestamp,
                                      minTime: getCurrentTimestamp,
                                      locale: LocaleType.values.firstWhere(
                                        (l) =>
                                            l.name ==
                                            FFLocalizations.of(context)
                                                .languageCode,
                                        orElse: () => LocaleType.en,
                                      ),
                                    );
                                  },
                                ),
                              ],
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
                                logFirebaseEvent('Button_Haptic-Feedback');
                                HapticFeedback.heavyImpact();
                                if (functions.checkQueryDate(datePicked)) {
                                  logFirebaseEvent('Button_Backend-Call');

                                  final commandeVenteCreateData =
                                      createCommandeVenteRecordData(
                                    date: datePicked,
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
                                  logFirebaseEvent('Button_Backend-Call');

                                  final usersUpdateData = {
                                    ...createUsersRecordData(
                                      phoneNumber: textController!.text,
                                    ),
                                    'RendezVousList':
                                        FieldValue.arrayUnion([a1!.reference]),
                                  };
                                  await currentUserReference!
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
                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  logFirebaseEvent('Button_Bottom-Sheet');
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
                                  );
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
