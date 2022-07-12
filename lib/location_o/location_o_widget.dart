import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationOWidget extends StatefulWidget {
  const LocationOWidget({
    Key key,
    this.marque,
    this.transmission,
    this.prix,
    this.gerant,
    this.vehicule,
  }) : super(key: key);

  final String marque;
  final String transmission;
  final int prix;
  final DocumentReference gerant;
  final DocumentReference vehicule;

  @override
  _LocationOWidgetState createState() => _LocationOWidgetState();
}

class _LocationOWidgetState extends State<LocationOWidget> {
  CommandeLocationRecord commandeCreationAction;
  DateTime datePicked;
  PageController pageViewController;
  int countControllerValue;
  String faireLePleinValue;
  String chauffeurValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'LocationO'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0x3A000000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            buttonSize: 46,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'LOCATION_O_arrow_back_rounded_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_Navigate-Back');
                              context.pop();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Louer',
                            style: FlutterFlowTheme.of(context).title2.override(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: StreamBuilder<LocationRecord>(
                      stream: LocationRecord.getDocument(widget.vehicule),
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
                        final topimageLocationRecord = snapshot.data;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.89,
                              height: MediaQuery.of(context).size.height * 0.21,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Builder(
                                builder: (context) {
                                  final imagesLocationOrder =
                                      topimageLocationRecord.images
                                              .toList()
                                              ?.toList() ??
                                          [];
                                  return Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.89,
                                    height: 244,
                                    child: PageView.builder(
                                      controller: pageViewController ??=
                                          PageController(
                                              initialPage: min(
                                                  0,
                                                  imagesLocationOrder.length -
                                                      1)),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imagesLocationOrder.length,
                                      itemBuilder:
                                          (context, imagesLocationOrderIndex) {
                                        final imagesLocationOrderItem =
                                            imagesLocationOrder[
                                                imagesLocationOrderIndex];
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.network(
                                            imagesLocationOrderItem,
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          widget.marque,
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF090F13),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          widget.transmission,
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'San fransisco',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 21, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Date de debut ',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'San fransisco',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(29, 0, 0, 0),
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
                                      FlutterFlowTheme.of(context).primaryColor,
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
                                'LOCATION_O_add_circle_outline_ICN_ON_TAP');
                            logFirebaseEvent('IconButton_Date-Time-Picker');
                            await DatePicker.showDateTimePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked = date);
                              },
                              currentTime: getCurrentTimestamp,
                              minTime: getCurrentTimestamp,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'nombre de jours',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'San fransisco',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color:
                              enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        count: countControllerValue ??= 1,
                        updateCount: (count) =>
                            setState(() => countControllerValue = count),
                        stepSize: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 21, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Choisis une option',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'San fransisco',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                            child: FlutterFlowChoiceChips(
                              initiallySelected: faireLePleinValue != null
                                  ? [faireLePleinValue]
                                  : ['Pas de plein'],
                              options: [
                                ChipData('Faire le plein'),
                                ChipData('Pas de plein')
                              ],
                              onChanged: (val) =>
                                  setState(() => faireLePleinValue = val.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFF1D2429),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                iconColor: Colors.white,
                                iconSize: 18,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                elevation: 4,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                iconColor: Color(0xFF262D34),
                                iconSize: 24,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    12, 8, 12, 8),
                                elevation: 2,
                              ),
                              chipSpacing: 12,
                              multiselect: false,
                              initialized: faireLePleinValue != null,
                              alignment: WrapAlignment.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FlutterFlowChoiceChips(
                            initiallySelected: chauffeurValue != null
                                ? [chauffeurValue]
                                : ['Aucun chauffeur'],
                            options: [
                              ChipData('Chauffeur'),
                              ChipData('Aucun chauffeur')
                            ],
                            onChanged: (val) =>
                                setState(() => chauffeurValue = val.first),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0xFF1E2429),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              iconColor: Colors.white,
                              iconSize: 18,
                              labelPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                              elevation: 4,
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              iconColor: Color(0xFF95A1AC),
                              iconSize: 18,
                              labelPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                              elevation: 2,
                            ),
                            chipSpacing: 12,
                            multiselect: false,
                            initialized: chauffeurValue != null,
                            alignment: WrapAlignment.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 34, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Base Price',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'San fransisco',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
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
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'San fransisco',
                                    color: Color(0xFF151B1E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF8B97A2),
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: false,
                              ),
                        ),
                        Text(
                          '${formatNumber(
                            functions.prixTotal(
                                widget.prix, countControllerValue),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.commaDecimal,
                          )} fr CFA',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF090F13),
                                fontSize: 24,
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(
              color: Color(0xFF175EFB),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x55000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('LOCATION_O_PAGE_CONFIRMER_BTN_ON_TAP');
                logFirebaseEvent('Button_Backend-Call');

                final commandeLocationCreateData =
                    createCommandeLocationRecordData(
                  client: currentUserReference,
                  dateDebut: datePicked,
                  vehicule: widget.vehicule,
                  chauffeur: valueOrDefault<String>(
                    chauffeurValue,
                    'Aucun chauffeur',
                  ),
                  faireLePlein: valueOrDefault<String>(
                    faireLePleinValue,
                    'Pas de plein',
                  ),
                  gerant: widget.gerant,
                  nbJour: countControllerValue,
                  prixtotal:
                      '${functions.prixTotal(widget.prix, countControllerValue).toString()}fr CFA',
                );
                var commandeLocationRecordReference =
                    CommandeLocationRecord.collection.doc();
                await commandeLocationRecordReference
                    .set(commandeLocationCreateData);
                commandeCreationAction =
                    CommandeLocationRecord.getDocumentFromData(
                        commandeLocationCreateData,
                        commandeLocationRecordReference);
                logFirebaseEvent('Button_Backend-Call');

                final usersUpdateData = {
                  'CommandeList':
                      FieldValue.arrayUnion([commandeCreationAction.reference]),
                };
                await currentUserReference.update(usersUpdateData);
                logFirebaseEvent('Button_Navigate-To');
                context.goNamed('DoneLocation');

                setState(() {});
              },
              text: 'Confirmer',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: Color(0xFF175EFB),
                textStyle: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'San fransisco',
                      color: Colors.white,
                      fontSize: 24,
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
        ],
      ),
    );
  }
}
