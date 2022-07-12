import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class VenteWidget extends StatefulWidget {
  const VenteWidget({
    Key key,
    this.temoin,
  }) : super(key: key);

  final bool temoin;

  @override
  _VenteWidgetState createState() => _VenteWidgetState();
}

class _VenteWidgetState extends State<VenteWidget> {
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
  PageController pageViewController13;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Vente'});
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
        List<VenteRecord> venteVenteRecordList = snapshot.data;
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
                      logFirebaseEvent('VENTE_PAGE_Badge_igbnerbp_ON_TAP');
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
                      length: 13,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 21, 0),
                                    child: Icon(
                                      FFIcons.kaudi,
                                      color: Color(0xFF434141),
                                      size: 55,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Audi',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 3, 0),
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
                                  Icon(
                                    FFIcons.kmazda,
                                    color: Color(0xFF434141),
                                    size: 44,
                                  ),
                                  Tab(
                                    text: ' Mazda',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 3, 0),
                                    child: Icon(
                                      FFIcons.ktoyota,
                                      color: Color(0xFF434141),
                                      size: 55,
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
                                        0, 0, 3, 0),
                                    child: Icon(
                                      FFIcons.kland,
                                      size: 55,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Example 8',
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
                                        0, 0, 28, 0),
                                    child: Icon(
                                      FFIcons.kkia,
                                      color: Color(0xFF434141),
                                      size: 28,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Kia',
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
                                    FFIcons.kbmw3,
                                    color: Color(0xFF434141),
                                  ),
                                  Tab(
                                    text: 'BMW',
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
                                    text: 'Hyundai',
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_wlga6nkk_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteAll =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController1 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteAll.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteAll
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteAllIndex) {
                                                                      final imagesVenteAllItem =
                                                                          imagesVenteAll[
                                                                              imagesVenteAllIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_dwfqfhci_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteAllItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteAllItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteAllItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteAllItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('peugeot', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_6vnh123a_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVentePeugeot =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController2 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVentePeugeot.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVentePeugeot
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVentePeugeotIndex) {
                                                                      final imagesVentePeugeotItem =
                                                                          imagesVentePeugeot[
                                                                              imagesVentePeugeotIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_dz20fn8f_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVentePeugeotItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVentePeugeotItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVentePeugeotItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVentePeugeotItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('mercedes', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_xbiewaxt_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteMercedes =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController3 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteMercedes.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteMercedes
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteMercedesIndex) {
                                                                      final imagesVenteMercedesItem =
                                                                          imagesVenteMercedes[
                                                                              imagesVenteMercedesIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_my4399hk_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteMercedesItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteMercedesItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteMercedesItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteMercedesItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('audi', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_gh0jjm4y_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteAudi =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController4 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteAudi.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteAudi
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteAudiIndex) {
                                                                      final imagesVenteAudiItem =
                                                                          imagesVenteAudi[
                                                                              imagesVenteAudiIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_c8n8p2qg_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteAudiItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteAudiItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteAudiItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteAudiItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('volkswagen', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_e2mdlidt_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteVolkswagen =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController5 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteVolkswagen.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteVolkswagen
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteVolkswagenIndex) {
                                                                      final imagesVenteVolkswagenItem =
                                                                          imagesVenteVolkswagen[
                                                                              imagesVenteVolkswagenIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_sudmr358_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteVolkswagenItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteVolkswagenItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteVolkswagenItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteVolkswagenItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('mazda', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_7mb7ewop_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteMazda =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController6 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteMazda.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteMazda
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteMazdaIndex) {
                                                                      final imagesVenteMazdaItem =
                                                                          imagesVenteMazda[
                                                                              imagesVenteMazdaIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_al7811sf_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteMazdaItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteMazdaItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteMazdaItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteMazdaItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('toyota', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_tnkhqabp_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteToyota =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController7 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteToyota.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteToyota
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteToyotaIndex) {
                                                                      final imagesVenteToyotaItem =
                                                                          imagesVenteToyota[
                                                                              imagesVenteToyotaIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_nei9xpmk_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteToyotaItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteToyotaItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteToyotaItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteToyotaItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('rangerover', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_t7y9bmhd_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteRangero =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController8 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteRangero.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteRangero
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteRangeroIndex) {
                                                                      final imagesVenteRangeroItem =
                                                                          imagesVenteRangero[
                                                                              imagesVenteRangeroIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_mssardr2_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteRangeroItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteRangeroItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteRangeroItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteRangeroItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('ford', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_c0lpiikr_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteFord =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController9 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteFord.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteFord
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteFordIndex) {
                                                                      final imagesVenteFordItem =
                                                                          imagesVenteFord[
                                                                              imagesVenteFordIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_pr8iu2tm_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteFordItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteFordItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteFordItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteFordItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('kia', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_9jzkuz80_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteKia =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController10 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteKia.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteKia
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteKiaIndex) {
                                                                      final imagesVenteKiaItem =
                                                                          imagesVenteKia[
                                                                              imagesVenteKiaIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_1lsw66nz_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteKiaItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteKiaItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteKiaItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteKiaItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('mitsubishi', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_ce7z7bhf_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteMitsubishi =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController11 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteMitsubishi.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteMitsubishi
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteMitsubishiIndex) {
                                                                      final imagesVenteMitsubishiItem =
                                                                          imagesVenteMitsubishi[
                                                                              imagesVenteMitsubishiIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_0m5f1pab_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteMitsubishiItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteMitsubishiItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteMitsubishiItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteMitsubishiItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('bmw', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_1f0nz68a_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteBmw =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController12 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteBmw.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteBmw
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteBmwIndex) {
                                                                      final imagesVenteBmwItem =
                                                                          imagesVenteBmw[
                                                                              imagesVenteBmwIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_wtqxydmx_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteBmwItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteBmwItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteBmwItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteBmwItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
                                  child: StreamBuilder<List<VenteRecord>>(
                                    stream: queryVenteRecord(
                                      queryBuilder: (venteRecord) => venteRecord
                                          .where('hyundai', isEqualTo: true),
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
                                      List<VenteRecord>
                                          listViewVenteRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVenteRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVenteRecord =
                                              listViewVenteRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 12, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'VENTE_PAGE_Container_61uwzx70_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                context.pushNamed(
                                                  'VenteDetailsOfcar',
                                                  queryParams: {
                                                    'marque': serializeParam(
                                                        listViewVenteRecord
                                                            .marque,
                                                        ParamType.String),
                                                    'transmission':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .transmission,
                                                            ParamType.String),
                                                    'nbSiege': serializeParam(
                                                        listViewVenteRecord
                                                            .nbSiege,
                                                        ParamType.int),
                                                    'annee': serializeParam(
                                                        listViewVenteRecord
                                                            .annee,
                                                        ParamType.int),
                                                    'carburant': serializeParam(
                                                        listViewVenteRecord
                                                            .carburant,
                                                        ParamType.String),
                                                    'kilometrage':
                                                        serializeParam(
                                                            listViewVenteRecord
                                                                .kilometrage,
                                                            ParamType.int),
                                                    'prix': serializeParam(
                                                        listViewVenteRecord
                                                            .prix,
                                                        ParamType.int),
                                                    'car': serializeParam(
                                                        listViewVenteRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference),
                                                    'gerant': serializeParam(
                                                        listViewVenteRecord
                                                            .gerant,
                                                        ParamType
                                                            .DocumentReference),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
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
                                                                            listViewVenteRecord.marque,
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
                                                                              Text(
                                                                            listViewVenteRecord.transmission,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Color(0xFF7D99CA),
                                                                                  fontSize: 12,
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
                                                                        8,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
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
                                                                    )}fr CFA',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'San fransisco',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final likedByElement =
                                                                          currentUserReference;
                                                                      final likedByUpdate = listViewVenteRecord
                                                                              .likedBy
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
                                                                      final venteUpdateData =
                                                                          {
                                                                        'liked_by':
                                                                            likedByUpdate,
                                                                      };
                                                                      await listViewVenteRecord
                                                                          .reference
                                                                          .update(
                                                                              venteUpdateData);
                                                                    },
                                                                    value: listViewVenteRecord
                                                                        .likedBy
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 25,
                                                                    ),
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
                                                                final imagesVenteHyundai =
                                                                    listViewVenteRecord
                                                                            .images
                                                                            .toList()
                                                                            ?.toList() ??
                                                                        [];
                                                                return Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child: PageView
                                                                      .builder(
                                                                    controller: pageViewController13 ??= PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            imagesVenteHyundai.length -
                                                                                1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        imagesVenteHyundai
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            imagesVenteHyundaiIndex) {
                                                                      final imagesVenteHyundaiItem =
                                                                          imagesVenteHyundai[
                                                                              imagesVenteHyundaiIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VENTE_PAGE_Image_qikjzalm_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_Expand-Image');
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  imagesVenteHyundaiItem,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: imagesVenteHyundaiItem,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              imagesVenteHyundaiItem,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0),
                                                                            child:
                                                                                Image.network(
                                                                              imagesVenteHyundaiItem,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: MediaQuery.of(context).size.height * 1,
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
                                                                          listViewVenteRecord
                                                                              .annee
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
                                                                                color: FlutterFlowTheme.of(context).sixx,
                                                                                fontSize: 13,
                                                                                fontWeight: FontWeight.w500,
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
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).sixx,
                                                                          size:
                                                                              21,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            listViewVenteRecord.nbSiege.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'San fransisco',
                                                                                  color: FlutterFlowTheme.of(context).sixx,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
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
