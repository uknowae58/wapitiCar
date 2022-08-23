import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AProposWidget extends StatefulWidget {
  const AProposWidget({Key? key}) : super(key: key);

  @override
  _AProposWidgetState createState() => _AProposWidgetState();
}

class _AProposWidgetState extends State<AProposWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'aPropos'});
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
            Icons.chevron_left,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('A_PROPOS_PAGE_chevron_left_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            context.pop();
          },
        ),
        title: Text(
          'A propos',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'San fransisco',
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 21, 8, 0),
                  child: Text(
                    'Wapiti car a pour objectif de faciliter le quotidien de l’ivoirien, principalement dans le domaine de l’automobile et du transport. Vente, location, entretient de véhicule et d\'autres services sont nos domaines d’expertise. Nous ne travaillons qu\'avec des professionnels de l\'automobile, ayant plusieurs années d\'expérience et un sens accru des responsabilités.\n\nComment fonctionne Wapiticar  ?\n-          Pour l’achat de véhicule, prenez rendez-vous avec nos concessionnaires partenaires qui vous assisteront et faciliteront la procédure d’achat.\n-          Pour la location de véhicule, commandez directement sur l’application le véhicule qui vous convient et faites-le vous livrer.\n-          Pour les services de dépannage, lavage auto, et location d’engins de construction, choisissez le service dont vous avez besoin, choisissez la formule qui vous convient et réservez un rendez-vous.\n\nWapiticar s’engage à faciliter au maximum tout processus de vente et de location de véhicules entamé avec un de ses partenaires. De plus nous vous garantissons des services de dépannage et de lavage auto de qualité, ainsi qu’une assistance complète dans l’entretient de vos véhicules.\n\nWapiticar se désengage de tout dommage causé par le client dans le cas d’une location de véhicule. Wapiticar étant apporteur d\'affaires, tout contrat de location de véhicule lie l’entreprise, propriétaire du véhicule et le client.\n\nVeuillez noter que pour la location de véhicules, le permis de conduire du client devra obligatoirement être présenté. Pour l’achat de véhicules, toutes pièces d’identité et documents nécessaires vous seront communiqués par le concessionnaire.  \n\nWapiticar est une application mobile interdite aux mineurs (-18).',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).sixx,
                          fontSize: 14,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
