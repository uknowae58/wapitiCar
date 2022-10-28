import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class BerlineWidget extends StatefulWidget {
  const BerlineWidget({Key? key}) : super(key: key);

  @override
  _BerlineWidgetState createState() => _BerlineWidgetState();
}

class _BerlineWidgetState extends State<BerlineWidget> {
  PageController? pageViewController1;
  PageController? pageViewController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Berline'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).theFourth,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
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
                        logFirebaseEvent('BERLINE_PAGE_Card_rv6qum0q_ON_TAP');
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
                        'Berline',
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
                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 0),
                child: Text(
                  'Retrouvez tous nos véhicules de type de berline. Naviguez à travers les différents onglets en fonction de votre besoin',
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF8B97A2),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: FlutterFlowTheme.of(context).five,
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          indicatorColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          tabs: [
                            Tab(
                              text: 'Location',
                            ),
                            Tab(
                              text: 'Vente',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: StreamBuilder<List<LocationRecord>>(
                                  stream: queryLocationRecord(
                                    queryBuilder: (locationRecord) =>
                                        locationRecord.where('type_de_voiture',
                                            isEqualTo: 'Berline'),
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
                                        snapshot.data!;
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
                                                  'BERLINE_PAGE_Container_qu60coyx_ON_TAP');
                                              logFirebaseEvent(
                                                  'Container_navigate_to');

                                              context.pushNamed(
                                                'LocationDetailsOfcar',
                                                queryParams: {
                                                  'marque': serializeParam(
                                                    listViewLocationRecord
                                                        .marque,
                                                    ParamType.String,
                                                  ),
                                                  'annee': serializeParam(
                                                    listViewLocationRecord
                                                        .annee,
                                                    ParamType.int,
                                                  ),
                                                  'nbSiege': serializeParam(
                                                    listViewLocationRecord
                                                        .nbSiege,
                                                    ParamType.int,
                                                  ),
                                                  'prix': serializeParam(
                                                    listViewLocationRecord.prix,
                                                    ParamType.int,
                                                  ),
                                                  'carburant': serializeParam(
                                                    listViewLocationRecord
                                                        .carburant,
                                                    ParamType.String,
                                                  ),
                                                  'transmission':
                                                      serializeParam(
                                                    listViewLocationRecord
                                                        .transmission,
                                                    ParamType.String,
                                                  ),
                                                  'leclient': serializeParam(
                                                    currentUserReference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'vehicule': serializeParam(
                                                    listViewLocationRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'gerant': serializeParam(
                                                    listViewLocationRecord
                                                        .gerant,
                                                    ParamType.DocumentReference,
                                                  ),
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
                                                      BorderRadius.circular(16),
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
                                                                  .fromSTEB(5,
                                                                      0, 0, 0),
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
                                                              color:
                                                                  Colors.white,
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
                                                                          listViewLocationRecord
                                                                              .marque!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .subtitle1
                                                                              .override(
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
                                                                          listViewLocationRecord
                                                                              .transmission!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
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
                                                                  .fromSTEB(0,
                                                                      0, 12, 0),
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
                                                                    child: Text(
                                                                      '${listViewLocationRecord.prix?.toString()}fr CFA',
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
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
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
                                                                        final likedByUpdate = listViewLocationRecord.likedBy!.toList().contains(likedByElement)
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
                                                                          .likedBy!
                                                                          .toList()
                                                                          .contains(
                                                                              currentUserReference),
                                                                      onIcon:
                                                                          Icon(
                                                                        Icons
                                                                            .favorite,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25,
                                                                      ),
                                                                      offIcon:
                                                                          Icon(
                                                                        Icons
                                                                            .favorite_border,
                                                                        color: Colors
                                                                            .black,
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
                                                            builder: (context) {
                                                              final imagesLocationFavoris =
                                                                  listViewLocationRecord
                                                                      .images!
                                                                      .toList();
                                                              return Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.89,
                                                                height: 244,
                                                                child: PageView
                                                                    .builder(
                                                                  controller: pageViewController1 ??=
                                                                      PageController(
                                                                          initialPage: min(
                                                                              0,
                                                                              imagesLocationFavoris.length - 1)),
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  itemCount:
                                                                      imagesLocationFavoris
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          imagesLocationFavorisIndex) {
                                                                    final imagesLocationFavorisItem =
                                                                        imagesLocationFavoris[
                                                                            imagesLocationFavorisIndex];
                                                                    return ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0),
                                                                      child: Image
                                                                          .network(
                                                                        imagesLocationFavorisItem,
                                                                        width:
                                                                            100,
                                                                        height:
                                                                            100,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                                            color: Colors.white,
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              1,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .calendarAlt,
                                                                        color: Color(
                                                                            0xB39D9FA0),
                                                                        size:
                                                                            21,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        listViewLocationRecord
                                                                            .annee!
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
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
                                                                      Icon(
                                                                        Icons
                                                                            .people,
                                                                        color: Color(
                                                                            0xB39D9FA0),
                                                                        size:
                                                                            21,
                                                                      ),
                                                                      Text(
                                                                        listViewLocationRecord
                                                                            .nbSiege!
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
                                                                              fontWeight: FontWeight.w300,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
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
                                                                      FaIcon(
                                                                        FontAwesomeIcons
                                                                            .snowflake,
                                                                        color: Color(
                                                                            0xB39D9FA0),
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: StreamBuilder<List<VenteRecord>>(
                                  stream: queryVenteRecord(
                                    queryBuilder: (venteRecord) =>
                                        venteRecord.where('type_de_voiture',
                                            isEqualTo: 'Berline'),
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
                                    List<VenteRecord> listViewVenteRecordList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      itemCount: listViewVenteRecordList.length,
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
                                                  'BERLINE_PAGE_Container_u6qye753_ON_TAP');
                                              logFirebaseEvent(
                                                  'Container_navigate_to');

                                              context.pushNamed(
                                                'VenteDetailsOfcar',
                                                queryParams: {
                                                  'marque': serializeParam(
                                                    listViewVenteRecord.marque,
                                                    ParamType.String,
                                                  ),
                                                  'transmission':
                                                      serializeParam(
                                                    listViewVenteRecord
                                                        .transmission,
                                                    ParamType.String,
                                                  ),
                                                  'nbSiege': serializeParam(
                                                    listViewVenteRecord.nbSiege,
                                                    ParamType.int,
                                                  ),
                                                  'annee': serializeParam(
                                                    listViewVenteRecord.annee,
                                                    ParamType.int,
                                                  ),
                                                  'carburant': serializeParam(
                                                    listViewVenteRecord
                                                        .carburant,
                                                    ParamType.String,
                                                  ),
                                                  'kilometrage': serializeParam(
                                                    listViewVenteRecord
                                                        .kilometrage,
                                                    ParamType.int,
                                                  ),
                                                  'prix': serializeParam(
                                                    listViewVenteRecord.prix,
                                                    ParamType.int,
                                                  ),
                                                  'car': serializeParam(
                                                    listViewVenteRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'gerant': serializeParam(
                                                    listViewVenteRecord.gerant,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'camera': serializeParam(
                                                    listViewVenteRecord
                                                        .cameraArriere,
                                                    ParamType.String,
                                                  ),
                                                  'bluetooth': serializeParam(
                                                    listViewVenteRecord
                                                        .bluetooth,
                                                    ParamType.String,
                                                  ),
                                                  'cle': serializeParam(
                                                    listViewVenteRecord.cle,
                                                    ParamType.String,
                                                  ),
                                                  'capteurs': serializeParam(
                                                    listViewVenteRecord
                                                        .capteurs,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
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
                                                      BorderRadius.circular(16),
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
                                                                  .fromSTEB(5,
                                                                      0, 0, 0),
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
                                                              color:
                                                                  Colors.white,
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
                                                                          listViewVenteRecord
                                                                              .marque!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .subtitle1
                                                                              .override(
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
                                                                          listViewVenteRecord
                                                                              .transmission!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: Color(0xFF0915E3),
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
                                                                  .fromSTEB(0,
                                                                      0, 12, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
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
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                              ToggleIcon(
                                                                onPressed:
                                                                    () async {
                                                                  final likedByElement =
                                                                      currentUserReference;
                                                                  final likedByUpdate = listViewVenteRecord
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
                                                                    .likedBy!
                                                                    .toList()
                                                                    .contains(
                                                                        currentUserReference),
                                                                onIcon: Icon(
                                                                  Icons
                                                                      .favorite,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 25,
                                                                ),
                                                                offIcon: Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 25,
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
                                                            builder: (context) {
                                                              final imagesVenteFavoris =
                                                                  listViewVenteRecord
                                                                      .images!
                                                                      .toList();
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
                                                                  controller: pageViewController2 ??=
                                                                      PageController(
                                                                          initialPage: min(
                                                                              0,
                                                                              imagesVenteFavoris.length - 1)),
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  itemCount:
                                                                      imagesVenteFavoris
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          imagesVenteFavorisIndex) {
                                                                    final imagesVenteFavorisItem =
                                                                        imagesVenteFavoris[
                                                                            imagesVenteFavorisIndex];
                                                                    return InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'BERLINE_PAGE_Image_ukevgyik_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'Image_expand_image');
                                                                        await Navigator
                                                                            .push(
                                                                          context,
                                                                          PageTransition(
                                                                            type:
                                                                                PageTransitionType.fade,
                                                                            child:
                                                                                FlutterFlowExpandedImageView(
                                                                              image: Image.network(
                                                                                imagesVenteFavorisItem,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                              allowRotation: false,
                                                                              tag: imagesVenteFavorisItem,
                                                                              useHeroAnimation: true,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                          Hero(
                                                                        tag:
                                                                            imagesVenteFavorisItem,
                                                                        transitionOnUserGestures:
                                                                            true,
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0),
                                                                          child:
                                                                              Image.network(
                                                                            imagesVenteFavorisItem,
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            height:
                                                                                MediaQuery.of(context).size.height * 1,
                                                                            fit:
                                                                                BoxFit.cover,
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
                                                            color: Colors.white,
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              1,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .calendarAlt,
                                                                        color: Color(
                                                                            0xB39D9FA0),
                                                                        size:
                                                                            21,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              3,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        listViewVenteRecord
                                                                            .annee!
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'San fransisco',
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
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
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .people,
                                                                        color: Color(
                                                                            0xB39D9FA0),
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
                                                                          listViewVenteRecord
                                                                              .nbSiege!
                                                                              .toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'San fransisco',
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
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
                                                                      FaIcon(
                                                                        FontAwesomeIcons
                                                                            .snowflake,
                                                                        color: Color(
                                                                            0xB39D9FA0),
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
      ),
    );
  }
}
