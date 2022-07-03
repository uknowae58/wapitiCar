import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DoneLocationWidget extends StatefulWidget {
  const DoneLocationWidget({Key key}) : super(key: key);

  @override
  _DoneLocationWidgetState createState() => _DoneLocationWidgetState();
}

class _DoneLocationWidgetState extends State<DoneLocationWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'lottieAnimationOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 987,
      delay: 233,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
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
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'DoneLocation'});
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
            ).animated([animationsMap['lottieAnimationOnPageLoadAnimation']]),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 24, 0, 0),
              child: Text(
                'Commande a ete enregistrée',
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
                'Votre commande sera envoye au proprietaire du vehicule. Le proprietaire vous contacteras pour finaliser votre location. Veuillez noter que le prix final peux differer au cas ou les services de chauffeur ou du plein ont ete choisis.',
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
                        logFirebaseEvent('DONE_LOCATION_PAGE_HOME_BTN_ON_TAP');
                        logFirebaseEvent('Button_Navigate-To');
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
                        borderRadius: 40,
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
