import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class VenteWidget extends StatefulWidget {
  const VenteWidget({
    Key? key,
    this.temoin,
  }) : super(key: key);

  final bool? temoin;

  @override
  _VenteWidgetState createState() => _VenteWidgetState();
}

class _VenteWidgetState extends State<VenteWidget>
    with TickerProviderStateMixin {
  PageController? pageViewController;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 70),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Vente'});
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<VenteRecord>>(
      stream: queryVenteRecord(),
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
        List<VenteRecord> venteVenteRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).theFourth,
            automaticallyImplyLeading: false,
            title: Text(
              'Vente',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                child: AuthUserStreamWidget(
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('VENTE_PAGE_Badge_e86s2z6u_ON_TAP');
                      logFirebaseEvent('Badge_Navigate-To');
                      context.pushNamed('RendezVous');
                    },
                    child: Badge(
                      badgeContent: Text(
                        (currentUserDocument?.rendezVousList?.toList() ?? [])
                            .length
                            .toString(),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'San fransisco',
                              color: Colors.white,
                              useGoogleFonts: false,
                            ),
                      ),
                      showBadge: true,
                      shape: BadgeShape.circle,
                      badgeColor: FlutterFlowTheme.of(context).primaryColor,
                      elevation: 4,
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      position: BadgePosition.topEnd(),
                      animationType: BadgeAnimationType.scale,
                      toAnimate: true,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 21, 0),
                        child: FaIcon(
                          FontAwesomeIcons.clock,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.favorite,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('VENTE_PAGE_favorite_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_Navigate-To');
                    context.pushNamed('Favoris');
                  },
                ),
              ),
            ],
            centerTitle: false,
            elevation: 5,
          ),
          backgroundColor: FlutterFlowTheme.of(context).theFourth,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    ClipRect(
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0x00262D34),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/fond_decran_homePage.png',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Text(
                                            'Retrouvez les différents véhicules de nos concessionnaires.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF8B97A2),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 0, 0),
                                  child: StreamBuilder<UsersRecord>(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'En cas de soucis contactez',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF8B97A2),
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Text_ynbmpn0o_ON_TAP');
                                                logFirebaseEvent(
                                                    'Text_Navigate-To');
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
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xE2EC615B),
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 21, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            21, 0, 0, 0),
                                        child: Text(
                                          'Recherche',
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Color(0xFF8B97A2),
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 0, 4, 0),
                                            child: TextFormField(
                                              controller: textController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                'textController',
                                                Duration(milliseconds: 500),
                                                () => setState(() {}),
                                              ),
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'marques..',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                filled: true,
                                                fillColor: Colors.white,
                                                prefixIcon: Icon(
                                                  Icons.search_sharp,
                                                  color: Color(0xFF57636C),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF57636C),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
                    child: StreamBuilder<List<VenteRecord>>(
                      stream: queryVenteRecord(),
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
                        List<VenteRecord> listViewVenteRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewVenteRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewVenteRecord =
                                listViewVenteRecordList[listViewIndex];
                            return Visibility(
                              visible: functions.searchFunction(
                                  textController!.text,
                                  listViewVenteRecord.marque),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 12),
                                child: InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'VENTE_PAGE_car_Details_ON_TAP');
                                    logFirebaseEvent('car_Details_Navigate-To');
                                    context.pushNamed(
                                      'VenteDetailsOfcar',
                                      queryParams: {
                                        'marque': serializeParam(
                                            listViewVenteRecord.marque,
                                            ParamType.String),
                                        'transmission': serializeParam(
                                            listViewVenteRecord.transmission,
                                            ParamType.String),
                                        'nbSiege': serializeParam(
                                            listViewVenteRecord.nbSiege,
                                            ParamType.int),
                                        'annee': serializeParam(
                                            listViewVenteRecord.annee,
                                            ParamType.int),
                                        'carburant': serializeParam(
                                            listViewVenteRecord.carburant,
                                            ParamType.String),
                                        'kilometrage': serializeParam(
                                            listViewVenteRecord.kilometrage,
                                            ParamType.int),
                                        'prix': serializeParam(
                                            listViewVenteRecord.prix,
                                            ParamType.int),
                                        'car': serializeParam(
                                            listViewVenteRecord.reference,
                                            ParamType.DocumentReference),
                                        'gerant': serializeParam(
                                            listViewVenteRecord.gerant,
                                            ParamType.DocumentReference),
                                        'camera': serializeParam(
                                            listViewVenteRecord.cameraArriere,
                                            ParamType.String),
                                        'bluetooth': serializeParam(
                                            listViewVenteRecord.bluetooth,
                                            ParamType.String),
                                        'cle': serializeParam(
                                            listViewVenteRecord.cle,
                                            ParamType.String),
                                        'capteurs': serializeParam(
                                            listViewVenteRecord.capteurs,
                                            ParamType.String),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x2B202529),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 4),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        listViewVenteRecord
                                                            .transmission!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF57636C),
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          listViewVenteRecord
                                                              .marque!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF101213),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          '${formatNumber(
                                                            listViewVenteRecord
                                                                .prix,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .commaDecimal,
                                                          )}FR CFA',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 8, 0),
                                                child: Container(
                                                  width: 160,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final imageVente =
                                                          listViewVenteRecord
                                                              .images!
                                                              .toList();
                                                      return Container(
                                                        width: double.infinity,
                                                        height: 500,
                                                        child: PageView.builder(
                                                          controller: pageViewController ??=
                                                              PageController(
                                                                  initialPage: min(
                                                                      0,
                                                                      imageVente
                                                                              .length -
                                                                          1)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              imageVente.length,
                                                          itemBuilder: (context,
                                                              imageVenteIndex) {
                                                            final imageVenteItem =
                                                                imageVente[
                                                                    imageVenteIndex];
                                                            return InkWell(
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'VENTE_PAGE_Image_gnbdca93_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Image_Expand-Image');
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  PageTransition(
                                                                    type: PageTransitionType
                                                                        .fade,
                                                                    child:
                                                                        FlutterFlowExpandedImageView(
                                                                      image: Image
                                                                          .network(
                                                                        imageVenteItem,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                      allowRotation:
                                                                          false,
                                                                      tag:
                                                                          imageVenteItem,
                                                                      useHeroAnimation:
                                                                          true,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: Hero(
                                                                tag:
                                                                    imageVenteItem,
                                                                transitionOnUserGestures:
                                                                    true,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                  child: Image
                                                                      .network(
                                                                    imageVenteItem,
                                                                    width: 100,
                                                                    height: 100,
                                                                    fit: BoxFit
                                                                        .cover,
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
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 16, 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ToggleIcon(
                                                onPressed: () async {
                                                  final likedByElement =
                                                      currentUserReference;
                                                  final likedByUpdate =
                                                      listViewVenteRecord
                                                              .likedBy!
                                                              .toList()
                                                              .contains(
                                                                  likedByElement)
                                                          ? FieldValue
                                                              .arrayRemove([
                                                              likedByElement
                                                            ])
                                                          : FieldValue
                                                              .arrayUnion([
                                                              likedByElement
                                                            ]);
                                                  final venteUpdateData = {
                                                    'liked_by': likedByUpdate,
                                                  };
                                                  await listViewVenteRecord
                                                      .reference
                                                      .update(venteUpdateData);
                                                },
                                                value: listViewVenteRecord
                                                    .likedBy!
                                                    .toList()
                                                    .contains(
                                                        currentUserReference),
                                                onIcon: Icon(
                                                  Icons.favorite,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 21,
                                                ),
                                                offIcon: Icon(
                                                  Icons.favorite_border,
                                                  color: Colors.black,
                                                  size: 21,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Favoris',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .sixx,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Text(
                                                  'Année: ${listViewVenteRecord.annee?.toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .sixx,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animated([
                                  animationsMap['containerOnPageLoadAnimation']!
                                ]),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
