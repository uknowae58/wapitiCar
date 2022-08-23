import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NodispoWidget extends StatefulWidget {
  const NodispoWidget({Key? key}) : super(key: key);

  @override
  _NodispoWidgetState createState() => _NodispoWidgetState();
}

class _NodispoWidgetState extends State<NodispoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'nodispo'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.home,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('NODISPO_PAGE_home_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-To');
            context.pushNamed('Home');
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(89, 0, 0, 0),
                child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_0qvqjlcc.json',
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
