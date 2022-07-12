import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({
    Key key,
    this.temoin,
    this.gerant,
  }) : super(key: key);

  final bool temoin;
  final DocumentReference gerant;

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  PageController pageViewController10;
  PageController pageViewController1;
  PageController pageViewController2;
  PageController pageViewController3;
  PageController pageViewController4;
  PageController pageViewController5;
  PageController pageViewController6;
  PageController pageViewController7;
  PageController pageViewController8;
  PageController pageViewController9;
  PageController pageViewController11;
  PageController pageViewController12;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Location'});
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
        List<LocationRecord> locationLocationRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
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
                    color: Color(0xFF273754),
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
                      logFirebaseEvent('LOCATION_PAGE_Badge_ic680c6e_ON_TAP');
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
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).theFourth,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
                    child: DefaultTabController(
                      length: 12,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          TabBar(
                            isScrollable: true,
                            labelColor: Color(0xFF6F6D6D),
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'San fransisco',
                                      fontSize: 12,
                                      useGoogleFonts: false,
                                    ),
                            indicatorColor: Color(0xFF0915E3),
                            tabs: [
                              Tab(
                                text: 'ALL',
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FFIcons.kpeugeot,
                                    color: Color(0xFF434141),
                                    size: 44,
                                  ),
                                  Tab(
                                    text: 'Peugeot',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Icon(
                                      FFIcons.kmercedes,
                                      color: Color(0xFF434141),
                                      size: 44,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Mercedes',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FFIcons.kmitsubishi,
                                    color: Color(0xFF434141),
                                    size: 55,
                                  ),
                                  Tab(
                                    text: 'Mitsubishi',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FFIcons.khyundai,
                                    color: Color(0xFF434141),
                                    size: 55,
                                  ),
                                  Tab(
                                    text: 'hyundai',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Icon(
                                      FFIcons.kland,
                                      color: Color(0xFF434141),
                                      size: 28,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Range Rover',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FFIcons.kbmw3,
                                    color: Color(0xFF434141),
                                    size: 55,
                                  ),
                                  Tab(
                                    text: 'BMW',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Icon(
                                      FFIcons.ktoyota,
                                      color: Color(0xFF434141),
                                      size: 44,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Toyota',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Icon(
                                      FFIcons.kvolkswagen,
                                      color: Color(0xFF434141),
                                      size: 44,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Volkswagen',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 21, 0),
                                    child: Icon(
                                      FFIcons.kford,
                                      color: Color(0xFF434141),
                                      size: 55,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Ford',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 3, 0),
                                    child: Icon(
                                      FFIcons.kmazda,
                                      color: Color(0xFF434141),
                                      size: 44,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Mazda',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 28, 0),
                                    child: Icon(
                                      FFIcons.kkia,
                                      color: Color(0xFF434141),
                                    ),
                                  ),
                                  Tab(
                                    text: 'Kia',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_vcekxm4n_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationAll =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController1 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationAll.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationAll
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationAllIndex) {
                                                                      final imagesLocationAllItem =
                                                                          imagesLocationAll[
                                                                              imagesLocationAllIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_x6vuagyb_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationAllItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationAllItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationAllItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationAllItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              Color(0xFF56647D),
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: Color(0xFF56647D),
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              Color(0xFF56647D),
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: Color(0xFF56647D),
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              Color(0xFF56647D),
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('peugeot',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_iky8yl38_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationPeugeot =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController2 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationPeugeot.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationPeugeot
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationPeugeotIndex) {
                                                                      final imagesLocationPeugeotItem =
                                                                          imagesLocationPeugeot[
                                                                              imagesLocationPeugeotIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_lej2d4rx_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationPeugeotItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationPeugeotItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationPeugeotItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationPeugeotItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              Color(0xFF56647D),
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: Color(0xFF56647D),
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              Color(0xFF56647D),
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: Color(0xFF56647D),
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              Color(0xFF56647D),
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('mercedes',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_d91kwj3r_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationMercedes =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController3 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationMercedes.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationMercedes
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationMercedesIndex) {
                                                                      final imagesLocationMercedesItem =
                                                                          imagesLocationMercedes[
                                                                              imagesLocationMercedesIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_5xearyez_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationMercedesItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationMercedesItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationMercedesItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationMercedesItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('mitsubishi',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_ygmyczxo_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationMitsubishi =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController4 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationMitsubishi.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationMitsubishi
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationMitsubishiIndex) {
                                                                      final imagesLocationMitsubishiItem =
                                                                          imagesLocationMitsubishi[
                                                                              imagesLocationMitsubishiIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_hpony5fu_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationMitsubishiItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationMitsubishiItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationMitsubishiItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationMitsubishiItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('hyundai',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_q42h74iu_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationHyundai =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController5 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationHyundai.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationHyundai
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationHyundaiIndex) {
                                                                      final imagesLocationHyundaiItem =
                                                                          imagesLocationHyundai[
                                                                              imagesLocationHyundaiIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_8zdwyqsi_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationHyundaiItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationHyundaiItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationHyundaiItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationHyundaiItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('rangerover',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_lw3mzgj8_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationRangerover =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController6 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationRangerover.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationRangerover
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationRangeroverIndex) {
                                                                      final imagesLocationRangeroverItem =
                                                                          imagesLocationRangerover[
                                                                              imagesLocationRangeroverIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_hnbwk80j_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationRangeroverItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationRangeroverItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationRangeroverItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationRangeroverItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('bmw',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_hb1rh2nr_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationBmw =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController7 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationBmw.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationBmw
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationBmwIndex) {
                                                                      final imagesLocationBmwItem =
                                                                          imagesLocationBmw[
                                                                              imagesLocationBmwIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_thviu2c0_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationBmwItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationBmwItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationBmwItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationBmwItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('toyota',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_c5kbff8c_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationToyota =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController8 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationToyota.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationToyota
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationToyotaIndex) {
                                                                      final imagesLocationToyotaItem =
                                                                          imagesLocationToyota[
                                                                              imagesLocationToyotaIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_q19bkkhe_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationToyotaItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationToyotaItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationToyotaItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationToyotaItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('volkswagen',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_dnk6t4l6_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationVolkswagen =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController9 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationVolkswagen.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationVolkswagen
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationVolkswagenIndex) {
                                                                      final imagesLocationVolkswagenItem =
                                                                          imagesLocationVolkswagen[
                                                                              imagesLocationVolkswagenIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_7g8gq9pv_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationVolkswagenItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationVolkswagenItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationVolkswagenItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationVolkswagenItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('ford',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_n3ry0uml_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationFord =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController10 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationFord.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationFord
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationFordIndex) {
                                                                      final imagesLocationFordItem =
                                                                          imagesLocationFord[
                                                                              imagesLocationFordIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_e8yshd9k_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationFordItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationFordItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationFordItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationFordItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('mazda',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_f32lw3c2_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationIdk =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController11 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationIdk.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationIdk
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationIdkIndex) {
                                                                      final imagesLocationIdkItem =
                                                                          imagesLocationIdk[
                                                                              imagesLocationIdkIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_b639chet_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationIdkItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationIdkItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationIdkItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationIdkItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
                                      queryBuilder: (locationRecord) =>
                                          locationRecord.where('kia',
                                              isEqualTo: true),
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
                                      List<LocationRecord>
                                          listViewLocationRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLocationRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLocationRecord =
                                              listViewLocationRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOCATION_PAGE_Container_ld90wgpt_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'LocationDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewLocationRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'annee': serializeParam(
                                                        listViewLocationRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'nbSiege': serializeParam(
                                                        listViewLocationRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewLocationRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewLocationRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewLocationRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'leclient': serializeParam(
                                                        currentUserReference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'vehicule': serializeParam(
                                                        listViewLocationRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewLocationRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.07,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewLocationRecord.marque,
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Colors.black,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewLocationRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: Color(0xFF0915E3),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '${formatNumber(
                                                                          listViewLocationRecord
                                                                              .prix,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.commaDecimal,
                                                                        )}fr CFA',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final likedByElement =
                                                                              currentUserReference;
                                                                          final likedByUpdate = listViewLocationRecord.likedBy.toList().contains(likedByElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  likedByElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  likedByElement
                                                                                ]);
                                                                          final locationUpdateData =
                                                                              {
                                                                            'liked_by':
                                                                                likedByUpdate,
                                                                          };
                                                                          await listViewLocationRecord
                                                                              .reference
                                                                              .update(locationUpdateData);
                                                                        },
                                                                        value: listViewLocationRecord
                                                                            .likedBy
                                                                            .toList()
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.956,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.3,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesLocationKiam =
                                                                    listViewLocationRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 500,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController12 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesLocationKiam.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesLocationKiam
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesLocationKiamIndex) {
                                                                      final imagesLocationKiamItem =
                                                                          imagesLocationKiam[
                                                                              imagesLocationKiamIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'LOCATION_PAGE_Image_z9ftxn5u_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesLocationKiamItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesLocationKiamItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesLocationKiamItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              Image.network(
                                                                            imagesLocationKiamItem,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.15,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .calendarAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewLocationRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Text(
                                                                          listViewLocationRecord
                                                                              .nbSiege
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.15,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .snowflake,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
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
        );
      },
    );
  }
}
