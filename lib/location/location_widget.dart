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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({
    Key? key,
    this.temoin,
    this.gerant,
  }) : super(key: key);

  final bool? temoin;
  final DocumentReference? gerant;

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget>
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

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Location'});
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<LocationRecord>>(
      stream: queryLocationRecord(
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
        List<LocationRecord> locationLocationRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final locationLocationRecord = locationLocationRecordList.isNotEmpty
            ? locationLocationRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).theFourth,
            automaticallyImplyLeading: false,
            title: Text(
              'Location',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'San fransisco',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                child: AuthUserStreamWidget(
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('LOCATION_PAGE_Badge_7q9lsoxt_ON_TAP');
                      logFirebaseEvent('Badge_Navigate-To');
                      context.pushNamed('Commandes');
                    },
                    child: Badge(
                      badgeContent: Text(
                        (currentUserDocument?.commandeList?.toList() ?? [])
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
                        child: Icon(
                          Icons.shopping_cart,
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
                    logFirebaseEvent('LOCATION_PAGE_favorite_ICN_ON_TAP');
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
                                            'Retrouvez les différents véhicules mis en location par nos partenaires. ',
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
                                                    'LOCATION_PAGE_Text_o0qjffxm_ON_TAP');
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .cinq,
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
                    child: StreamBuilder<List<LocationRecord>>(
                      stream: queryLocationRecord(),
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
                        List<LocationRecord> listViewLocationRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewLocationRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewLocationRecord =
                                listViewLocationRecordList[listViewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'LOCATION_PAGE_car_Details_ON_TAP');
                                  logFirebaseEvent('car_Details_Navigate-To');
                                  context.pushNamed(
                                    'LocationDetailsOfcar',
                                    queryParams: {
                                      'marque': serializeParam(
                                          listViewLocationRecord.marque,
                                          ParamType.String),
                                      'annee': serializeParam(
                                          listViewLocationRecord.annee,
                                          ParamType.int),
                                      'nbSiege': serializeParam(
                                          listViewLocationRecord.nbSiege,
                                          ParamType.int),
                                      'prix': serializeParam(
                                          listViewLocationRecord.prix,
                                          ParamType.int),
                                      'carburant': serializeParam(
                                          listViewLocationRecord.carburant,
                                          ParamType.String),
                                      'transmission': serializeParam(
                                          listViewLocationRecord.transmission,
                                          ParamType.String),
                                      'leclient': serializeParam(
                                          currentUserReference,
                                          ParamType.DocumentReference),
                                      'vehicule': serializeParam(
                                          listViewLocationRecord.reference,
                                          ParamType.DocumentReference),
                                      'gerant': serializeParam(
                                          listViewLocationRecord.gerant,
                                          ParamType.DocumentReference),
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
                                  child: Visibility(
                                    visible: functions.searchFunction(
                                        textController!.text,
                                        listViewLocationRecord.marque),
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
                                                        listViewLocationRecord
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
                                                          listViewLocationRecord
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
                                                            listViewLocationRecord
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
                                                      final imageLocation =
                                                          listViewLocationRecord
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
                                                                      imageLocation
                                                                              .length -
                                                                          1)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              imageLocation
                                                                  .length,
                                                          itemBuilder: (context,
                                                              imageLocationIndex) {
                                                            final imageLocationItem =
                                                                imageLocation[
                                                                    imageLocationIndex];
                                                            return InkWell(
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'LOCATION_PAGE_Image_38zxlzo6_ON_TAP');
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
                                                                        imageLocationItem,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                      allowRotation:
                                                                          false,
                                                                      tag:
                                                                          imageLocationItem,
                                                                      useHeroAnimation:
                                                                          true,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: Hero(
                                                                tag:
                                                                    imageLocationItem,
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
                                                                    imageLocationItem,
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
                                                      listViewLocationRecord
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
                                                  final locationUpdateData = {
                                                    'liked_by': likedByUpdate,
                                                  };
                                                  await listViewLocationRecord
                                                      .reference
                                                      .update(
                                                          locationUpdateData);
                                                },
                                                value: listViewLocationRecord
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
                                                  'Année: ${listViewLocationRecord.annee?.toString()}',
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
                                ),
                              ).animated([
                                animationsMap['containerOnPageLoadAnimation']!
                              ]),
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
