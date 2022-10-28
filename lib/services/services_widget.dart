import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(40, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'iconOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(40, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'iconOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 50),
          end: Offset(0, 0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(40, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'iconOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Services'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
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
                        logFirebaseEvent('SERVICES_PAGE_Row_vb4h3b4w_ON_TAP');
                        logFirebaseEvent('Row_navigate_to');

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
                            'SERVICES_PAGE_ListTile_s431v16h_ON_TAP');
                        logFirebaseEvent('ListTile_navigate_to');

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
                            'SERVICES_PAGE_ListTile_dvxuvyma_ON_TAP');
                        logFirebaseEvent('ListTile_navigate_to');

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
                            'SERVICES_PAGE_ListTile_hoehbdn7_ON_TAP');
                        logFirebaseEvent('ListTile_navigate_to');

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
                            'SERVICES_PAGE_ListTile_j8syfrtg_ON_TAP');
                        logFirebaseEvent('ListTile_navigate_to');

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
                            'SERVICES_PAGE_ListTile_q4c3h3pd_ON_TAP');
                        logFirebaseEvent('ListTile_navigate_to');

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
                            'SERVICES_PAGE_ListTile_w2zbdrns_ON_TAP');
                        logFirebaseEvent('ListTile_navigate_to');

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
                            'SERVICES_PAGE_ListTile_by48tctw_ON_TAP');
                        logFirebaseEvent('ListTile_navigate_to');

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(89),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'Services',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'San fransisco',
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/images/pngwing.com_(1).png',
              fit: BoxFit.cover,
            ),
          ),
          centerTitle: false,
          elevation: 5,
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
                padding: EdgeInsetsDirectional.fromSTEB(16, 34, 16, 0),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('SERVICES_PAGE_dashboardMainCard_ON_TAP');
                    logFirebaseEvent('dashboardMainCard_haptic_feedback');
                    HapticFeedback.selectionClick();
                    logFirebaseEvent('dashboardMainCard_navigate_to');

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
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Color(0x23000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
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
                                            color: Colors.black,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .sixx,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                ).animateOnPageLoad(animationsMap[
                                    'columnOnPageLoadAnimation1']!),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.handsHelping,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation1']!),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation1']!),
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
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x23000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 2,
                      ),
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
                                        color: Colors.black,
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
                                          color:
                                              FlutterFlowTheme.of(context).sixx,
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
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation2']!),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.handsHelping,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ).animateOnPageLoad(
                                  animationsMap['iconOnPageLoadAnimation2']!),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 21, 16, 44),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('SERVICES_PAGE_dashboardMainCard_ON_TAP');
                    logFirebaseEvent('dashboardMainCard_haptic_feedback');
                    HapticFeedback.selectionClick();
                    logFirebaseEvent('dashboardMainCard_navigate_to');

                    context.pushNamed('generalAuto');
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
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Color(0x23000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 2,
                        ),
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
                                    'Vente de pieces de rechanges automobile',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'Acheter des pieces detaches',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .sixx,
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
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation3']!),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.handsHelping,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation3']!),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation3']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
