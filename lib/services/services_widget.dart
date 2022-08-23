import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  _ServicesWidgetState createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'iconOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 0,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'iconOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 0,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'columnOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'iconOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 0,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Services'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFBF8F8),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.drag_handle,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('SERVICES_PAGE_drag_handle_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Drawer');
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Text(
          'Services',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'San fransisco',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 5,
      ),
      backgroundColor: Color(0xFFFBF8F8),
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
                        logFirebaseEvent('SERVICES_PAGE_Row_kf3b80u1_ON_TAP');
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
                        logFirebaseEvent(
                            'SERVICES_PAGE_ListTile_88brqlig_ON_TAP');
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
                        logFirebaseEvent(
                            'SERVICES_PAGE_ListTile_binrmbtg_ON_TAP');
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
                        logFirebaseEvent(
                            'SERVICES_PAGE_ListTile_egadllgy_ON_TAP');
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
                        logFirebaseEvent(
                            'SERVICES_PAGE_ListTile_vgewcqd2_ON_TAP');
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
                        logFirebaseEvent(
                            'SERVICES_PAGE_ListTile_5cve3diw_ON_TAP');
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
                        logFirebaseEvent(
                            'SERVICES_PAGE_ListTile_2t455z1s_ON_TAP');
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
                        logFirebaseEvent(
                            'SERVICES_PAGE_ListTile_8xgv1aqt_ON_TAP');
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
                ],
              );
            },
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 21, 0, 0),
                child: Text(
                  'Consultez nos différents services offerts par nos partenaires. Nous proposons des services de qualités pour l’entretient de vos voitures et la location de véhicules de travaux.',
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
                            logFirebaseEvent(
                                'SERVICES_PAGE_Text_5n24g3kj_ON_TAP');
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 34, 16, 0),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('SERVICES_PAGE_dashboardMainCard_ON_TAP');
                    logFirebaseEvent('dashboardMainCard_Haptic-Feedback');
                    HapticFeedback.selectionClick();
                    logFirebaseEvent('dashboardMainCard_Navigate-To');
                    context.pushNamed('Midas');
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 170,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Color(0x23000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primaryColor,
                            Color(0xFFEC615B)
                          ],
                          stops: [0, 1],
                          begin: AlignmentDirectional(-1, 0.95),
                          end: AlignmentDirectional(1, -0.95),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Entretiens de vehicules',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'Midas s\'occupe de vous',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0x9AFFFFFF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'En savoir plus',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'San fransisco',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .cinq,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Icon(
                                          Icons.navigate_next,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Image.asset(
                                          'assets/images/Logo_Midas.png',
                                          width: 44,
                                          height: 44,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        '&',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'San fransisco',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .theFourth,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 0),
                                        child: Image.asset(
                                          'assets/images/WAPITI_LogoWhite_sansTitre.png',
                                          width: 55,
                                          height: 55,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ).animated([
                                animationsMap['columnOnPageLoadAnimation1']!
                              ]),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.handsHelping,
                                  color: Colors.white,
                                  size: 24,
                                ).animated([
                                  animationsMap['iconOnPageLoadAnimation1']!
                                ]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).animated([animationsMap['containerOnPageLoadAnimation1']!]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 21, 16, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x23000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).primaryColor,
                          Color(0xFFEC615B)
                        ],
                        stops: [0, 1],
                        begin: AlignmentDirectional(-1, 0.95),
                        end: AlignmentDirectional(1, -0.95),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lavages de vehicules',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'faites laver votre vehicules  domicile',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0x9AFFFFFF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'En savoir plus',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'San fransisco',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .cinq,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.navigate_next,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).animated(
                                [animationsMap['columnOnPageLoadAnimation2']!]),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.handsHelping,
                                color: Colors.white,
                                size: 24,
                              ).animated(
                                  [animationsMap['iconOnPageLoadAnimation2']!]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ).animated([animationsMap['containerOnPageLoadAnimation2']!]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 21, 16, 44),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('SERVICES_PAGE_dashboardMainCard_ON_TAP');
                    logFirebaseEvent('dashboardMainCard_Haptic-Feedback');
                    HapticFeedback.selectionClick();
                    logFirebaseEvent('dashboardMainCard_Navigate-To');
                    context.pushNamed('Travaux');
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 170,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Color(0x23000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primaryColor,
                            Color(0xFFEC615B)
                          ],
                          stops: [0, 1],
                          begin: AlignmentDirectional(-1, 0.95),
                          end: AlignmentDirectional(1, -0.95),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location de vehicules pour travaux',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'Louer des vehicules pour vos travaux',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0x9AFFFFFF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'En savoir plus',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'San fransisco',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .cinq,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Icon(
                                          Icons.navigate_next,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ).animated([
                                animationsMap['columnOnPageLoadAnimation3']!
                              ]),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.handsHelping,
                                  color: Colors.white,
                                  size: 24,
                                ).animated([
                                  animationsMap['iconOnPageLoadAnimation3']!
                                ]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).animated([animationsMap['containerOnPageLoadAnimation3']!]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
