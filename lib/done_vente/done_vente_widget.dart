import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DoneVenteWidget extends StatefulWidget {
  const DoneVenteWidget({Key? key}) : super(key: key);

  @override
  _DoneVenteWidgetState createState() => _DoneVenteWidgetState();
}

class _DoneVenteWidgetState extends State<DoneVenteWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'lottieAnimationOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 233.ms,
          duration: 987.ms,
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

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'DoneVente'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF175EFB),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_vlw0co98.json',
              width: MediaQuery.of(context).size.width * 0.9,
              height: 350,
              fit: BoxFit.cover,
              animate: true,
            ).animateOnPageLoad(
                animationsMap['lottieAnimationOnPageLoadAnimation']!),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'Rendez-vous',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'San fransisco',
                      color: Color(0xFF3F0AFD),
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
              child: Text(
                'Votre rendez-vous a bien été enregistré. Le concessionnaire vous contactera pour planifier votre rencontre.',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'San fransisco',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('DONE_VENTE_PAGE_HOME_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed('Home');
                      },
                      text: 'Home',
                      icon: Icon(
                        Icons.home,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 230,
                        height: 50,
                        color: Color(0xFF1E2429),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'San fransisco',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
