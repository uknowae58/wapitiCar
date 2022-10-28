import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class PaymentCheckoutLocationWidget extends StatefulWidget {
  const PaymentCheckoutLocationWidget({
    Key? key,
    this.dateDebut,
    this.vehicule,
    this.prixTotal,
    this.nbJour,
    this.carburant,
    this.chauffeur,
    this.prix,
  }) : super(key: key);

  final DateTime? dateDebut;
  final DocumentReference? vehicule;
  final int? prixTotal;
  final int? nbJour;
  final String? carburant;
  final bool? chauffeur;
  final int? prix;

  @override
  _PaymentCheckoutLocationWidgetState createState() =>
      _PaymentCheckoutLocationWidgetState();
}

class _PaymentCheckoutLocationWidgetState
    extends State<PaymentCheckoutLocationWidget> {
  ApiCallResponse? makePaymentAction;
  ApiCallResponse? tid;
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PaymentCheckout_Location'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            'PAYMENT_CHECKOUT_LOCATION_Card_rhswz33p_');
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
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Text(
                        'Payment',
                        style: FlutterFlowTheme.of(context).title2.override(
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
                padding: EdgeInsetsDirectional.fromSTEB(16, 21, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Details de la location',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: Icon(
                                    Icons.date_range_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20,
                                  ),
                                ),
                                Text(
                                  dateTimeFormat(
                                    'MMMMEEEEd',
                                    widget.dateDebut,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'San fransisco',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: Icon(
                                    Icons.access_time_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20,
                                  ),
                                ),
                                Text(
                                  '${widget.nbJour?.toString()} jour(s)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'San fransisco',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<LocationRecord>(
                      stream: LocationRecord.getDocument(widget.vehicule!),
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
                        final columnLocationRecord = snapshot.data!;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Color(0xFF0915E3),
                                  ),
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final imagesCommande =
                                        columnLocationRecord.images!.toList();
                                    return Container(
                                      width: double.infinity,
                                      height: 500,
                                      child: PageView.builder(
                                        controller: pageViewController ??=
                                            PageController(
                                                initialPage: min(0,
                                                    imagesCommande.length - 1)),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: imagesCommande.length,
                                        itemBuilder:
                                            (context, imagesCommandeIndex) {
                                          final imagesCommandeItem =
                                              imagesCommande[
                                                  imagesCommandeIndex];
                                          return InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'PAYMENT_CHECKOUT_LOCATION_Image_eadkevn1');
                                              logFirebaseEvent(
                                                  'Image_expand_image');
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  child:
                                                      FlutterFlowExpandedImageView(
                                                    image: Image.network(
                                                      imagesCommandeItem,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    allowRotation: false,
                                                    tag: imagesCommandeItem,
                                                    useHeroAnimation: true,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Hero(
                                              tag: imagesCommandeItem,
                                              transitionOnUserGestures: true,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  imagesCommandeItem,
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                height: 24,
                thickness: 2,
                indent: 16,
                endIndent: 16,
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                        child: Text(
                          'Payment',
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                      child: Container(
                        width: 33,
                        height: 33,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Logo_CP.jpg',
                        ),
                      ),
                    ),
                    Text(
                      'mobile money',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'San fransisco',
                            color: Color(0xE456647D),
                            fontSize: 12,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 24,
                thickness: 2,
                indent: 16,
                endIndent: 16,
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details du prix',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Carburant',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            widget.carburant!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chauffeur',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            widget.chauffeur! ? '5500' : '0',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Prix de la location',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            formatNumber(
                              widget.prix,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.commaDecimal,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 24,
                thickness: 2,
                indent: 16,
                endIndent: 16,
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Prix total',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    Text(
                      formatNumber(
                        widget.prixTotal,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.commaDecimal,
                      ),
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'San fransisco',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 24,
                thickness: 2,
                indent: 16,
                endIndent: 16,
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 55, 16, 16),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'PAYMENT_CHECKOUT_LOCATION_PROCEDER_AU_PA');
                    logFirebaseEvent('Button_backend_call');
                    tid = await WapiticarTIDCIDGeneratorCall.call(
                      userId: currentUserUid,
                    );
                    logFirebaseEvent('Button_backend_call');
                    makePaymentAction = await WapiticarCinetpayCall.call(
                      amount: widget.prixTotal,
                      transactionId: getJsonField(
                        (tid?.jsonBody ?? ''),
                        r'''$.transaction_id''',
                      ).toString(),
                      userId: currentUserUid,
                      commandeId: '2jjj',
                    );

                    setState(() {});
                  },
                  text: 'Proceder au payment',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'San fransisco',
                          color: Colors.white,
                          fontSize: 21,
                          useGoogleFonts: false,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
