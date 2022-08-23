import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class VanWidget extends StatefulWidget {
  const VanWidget({Key? key}) : super(key: key);

  @override
  _VanWidgetState createState() => _VanWidgetState();
}

class _VanWidgetState extends State<VanWidget> {
  PageController? pageViewController1;
  PageController? pageViewController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Van'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).theFourth,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('VAN_PAGE_chevron_left_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            context.pop();
          },
        ),
        title: Text(
          'Van',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'San fransisco',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).theFourth,
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/pngwing.com_(7)_(3).png',
              ).image,
            ),
          ),
          child: StreamBuilder<UsersRecord>(
            stream: UsersRecord.getDocument(FFAppState().wapitiCar!),
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
              final columnUsersRecord = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: AuthUserStreamWidget(
                            child: Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    currentUserPhoto,
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(21),
                                border: Border.all(
                                  color: Color(0xFF446193),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: AuthUserStreamWidget(
                                  child: Text(
                                    currentUserDisplayName,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'San fransisco',
                                          color: Color(0xFF446193),
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_Row_xm04jqcl_ON_TAP');
                        logFirebaseEvent('Row_Navigate-To');
                        context.pushNamed('changeProfil');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Modifier son profil',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'San fransisco',
                                      color: Color(0xFF7D99CA),
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Icon(
                              Icons.mode_outlined,
                              color: Color(0xFF7D99CA),
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Menu',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'San fransisco',
                                      color: FlutterFlowTheme.of(context).cinq,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 21, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_ioieof8m_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('Commandes');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.shopping_cart_outlined,
                          color: Color(0xFF38517A),
                          size: 24,
                        ),
                        title: Text(
                          'Commandes',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF38517A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_d0wvotwo_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('RendezVous');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.calendar_today_rounded,
                          color: Color(0xFF38517A),
                          size: 21,
                        ),
                        title: Text(
                          'Rendez-vous',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF38517A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_gpjsgaxf_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('Favoris');
                      },
                      child: Slidable(
                        actionPane: const SlidableScrollActionPane(),
                        secondaryActions: [
                          IconSlideAction(
                            caption: 'Location',
                            color: Color(0xFF0915E3),
                            icon: Icons.car_rental,
                            onTap: () {
                              print('SlidableActionWidget pressed ...');
                            },
                          ),
                          IconSlideAction(
                            caption: 'Vente',
                            color: Color(0xFF175EFB),
                            icon: Icons.directions_car,
                            onTap: () {
                              print('SlidableActionWidget pressed ...');
                            },
                          ),
                        ],
                        child: ListTile(
                          leading: Icon(
                            Icons.favorite_border,
                            color: Color(0xFF38517A),
                          ),
                          title: Text(
                            'Favoris',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'San fransisco',
                                  color: Color(0xFF38517A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: Colors.white,
                          dense: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 21),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_awvsmz6m_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('AllChatPage');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.message_outlined,
                          color: Color(0xFF38517A),
                          size: 24,
                        ),
                        title: Text(
                          'Message',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF38517A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 34, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Pages',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'San fransisco',
                                      color: FlutterFlowTheme.of(context).cinq,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 21, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_cislkgxl_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('Home');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Color(0xFF38517A),
                          size: 20,
                        ),
                        title: Text(
                          'Home',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF38517A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_2awymira_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('Location');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.car_rental,
                          color: Color(0xFF38517A),
                        ),
                        title: Text(
                          'Location',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF38517A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_eo62f2fk_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('Vente');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.directions_car,
                          color: Color(0xFF38517A),
                        ),
                        title: Text(
                          'Vente',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF38517A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 21),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('VAN_PAGE_ListTile_mcy8xwlk_ON_TAP');
                        logFirebaseEvent('ListTile_Navigate-To');
                        context.pushNamed('Services');
                      },
                      child: ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHandshake,
                          color: Color(0xFF38517A),
                          size: 24,
                        ),
                        title: Text(
                          'Services',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'San fransisco',
                                color: Color(0xFF38517A),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 0),
                child: Text(
                  'Retrouvez tous nos véhicules de type Van. Naviguez à travers les différents onglets en fonction de la categorie que vous recherchez.',
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF8B97A2),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              StreamBuilder<UsersRecord>(
                stream: UsersRecord.getDocument(FFAppState().wapitiCar!),
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
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          'En cas de soucis contactez',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent('VAN_PAGE_Text_b0chdcge_ON_TAP');
                            logFirebaseEvent('Text_Navigate-To');
                            context.pushNamed(
                              'ChatMessage',
                              queryParams: {
                                'chatUser': serializeParam(
                                    rowUsersRecord, ParamType.Document),
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
                                      FlutterFlowTheme.of(context).primaryColor,
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
                                            isEqualTo: 'Van'),
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
                                                  'VAN_PAGE_Container_85rnbyle_ON_TAP');
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
                                            isEqualTo: 'Van'),
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
                                                  'VAN_PAGE_Container_lu1hdno8_ON_TAP');
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
                                                      listViewVenteRecord.annee,
                                                      ParamType.int),
                                                  'carburant': serializeParam(
                                                      listViewVenteRecord
                                                          .carburant,
                                                      ParamType.String),
                                                  'kilometrage': serializeParam(
                                                      listViewVenteRecord
                                                          .kilometrage,
                                                      ParamType.int),
                                                  'prix': serializeParam(
                                                      listViewVenteRecord.prix,
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
                                                  'camera': serializeParam(
                                                      listViewVenteRecord
                                                          .cameraArriere,
                                                      ParamType.String),
                                                  'bluetooth': serializeParam(
                                                      listViewVenteRecord
                                                          .bluetooth,
                                                      ParamType.String),
                                                  'cle': serializeParam(
                                                      listViewVenteRecord.cle,
                                                      ParamType.String),
                                                  'capteurs': serializeParam(
                                                      listViewVenteRecord
                                                          .capteurs,
                                                      ParamType.String),
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
                                                                            'VAN_PAGE_Image_69sqyjyy_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'Image_Expand-Image');
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
