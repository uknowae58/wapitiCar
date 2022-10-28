import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({
    Key? key,
    this.temoin,
    this.gerant,
  }) : super(key: key);

  final bool? temoin;
  final DocumentReference? gerant;

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
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
          begin: Offset(0, 70),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  PageController? pageViewController;
  TextEditingController? textController;
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

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Location'});
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
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
        List<LocationRecord> locationLocationRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final locationLocationRecord = locationLocationRecordList.isNotEmpty
            ? locationLocationRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(89),
            child: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Text(
                'Location',
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
              elevation: 2,
            ),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 34, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 34, 0),
                          child: Container(
                            width: double.infinity,
                            height: 69,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4, 0, 4, 0),
                                    child: TextFormField(
                                      controller: textController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'textController',
                                        Duration(milliseconds: 500),
                                        () => setState(() {}),
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'marques..',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.search_sharp,
                                          color: Color(0xFF57636C),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 13,
                          borderWidth: 1,
                          buttonSize: 33,
                          fillColor: Colors.black,
                          icon: Icon(
                            Icons.tune,
                            color: Colors.white,
                            size: 16,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 21, 0, 0),
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
                        List<LocationRecord> listViewLocationRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewLocationRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewLocationRecord =
                                listViewLocationRecordList[listViewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'LOCATION_PAGE_car_Details_ON_TAP');
                                  logFirebaseEvent('car_Details_navigate_to');

                                  context.pushNamed(
                                    'LocationDetailsOfcar',
                                    queryParams: {
                                      'marque': serializeParam(
                                        listViewLocationRecord.marque,
                                        ParamType.String,
                                      ),
                                      'annee': serializeParam(
                                        listViewLocationRecord.annee,
                                        ParamType.int,
                                      ),
                                      'nbSiege': serializeParam(
                                        listViewLocationRecord.nbSiege,
                                        ParamType.int,
                                      ),
                                      'prix': serializeParam(
                                        listViewLocationRecord.prix,
                                        ParamType.int,
                                      ),
                                      'carburant': serializeParam(
                                        listViewLocationRecord.carburant,
                                        ParamType.String,
                                      ),
                                      'transmission': serializeParam(
                                        listViewLocationRecord.transmission,
                                        ParamType.String,
                                      ),
                                      'leclient': serializeParam(
                                        currentUserReference,
                                        ParamType.DocumentReference,
                                      ),
                                      'vehicule': serializeParam(
                                        listViewLocationRecord.reference,
                                        ParamType.DocumentReference,
                                      ),
                                      'gerant': serializeParam(
                                        listViewLocationRecord.gerant,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );

                                  logFirebaseEvent('car_Details_wait__delay');
                                  await Future.delayed(
                                      const Duration(milliseconds: 10000));
                                  logFirebaseEvent('car_Details_launch_u_r_l');
                                  await launchURL('www.facebook.com');
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 1,
                                    ),
                                  ),
                                  child: Visibility(
                                    visible: functions.searchFunction(
                                        textController!.text,
                                        listViewLocationRecord.marque),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 4),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        listViewLocationRecord
                                                            .transmission!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF57636C),
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          listViewLocationRecord
                                                              .marque!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF101213),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          '${formatNumber(
                                                            listViewLocationRecord
                                                                .prix,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .commaDecimal,
                                                          )}FR CFA',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .sixx,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 8, 0),
                                                child: Container(
                                                  width: 160,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    border: Border.all(
                                                      color: Color(0xFFB5B9F7),
                                                    ),
                                                  ),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final imageLocation =
                                                          listViewLocationRecord
                                                              .images!
                                                              .toList();
                                                      return Container(
                                                        width: double.infinity,
                                                        height: 500,
                                                        child: PageView.builder(
                                                          controller: pageViewController ??=
                                                              PageController(
                                                                  initialPage: min(
                                                                      0,
                                                                      imageLocation
                                                                              .length -
                                                                          1)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              imageLocation
                                                                  .length,
                                                          itemBuilder: (context,
                                                              imageLocationIndex) {
                                                            final imageLocationItem =
                                                                imageLocation[
                                                                    imageLocationIndex];
                                                            return InkWell(
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'LOCATION_PAGE_Image_xhm5j2p4_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Image_expand_image');
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  PageTransition(
                                                                    type: PageTransitionType
                                                                        .fade,
                                                                    child:
                                                                        FlutterFlowExpandedImageView(
                                                                      image: Image
                                                                          .network(
                                                                        imageLocationItem,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                      allowRotation:
                                                                          false,
                                                                      tag:
                                                                          imageLocationItem,
                                                                      useHeroAnimation:
                                                                          true,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: Hero(
                                                                tag:
                                                                    imageLocationItem,
                                                                transitionOnUserGestures:
                                                                    true,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                  child: Image
                                                                      .network(
                                                                    imageLocationItem,
                                                                    width: 100,
                                                                    height: 100,
                                                                    fit: BoxFit
                                                                        .cover,
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
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 16, 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ToggleIcon(
                                                onPressed: () async {
                                                  final likedByElement =
                                                      currentUserReference;
                                                  final likedByUpdate =
                                                      listViewLocationRecord
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
                                                  final locationUpdateData = {
                                                    'liked_by': likedByUpdate,
                                                  };
                                                  await listViewLocationRecord
                                                      .reference
                                                      .update(
                                                          locationUpdateData);
                                                },
                                                value: listViewLocationRecord
                                                    .likedBy!
                                                    .toList()
                                                    .contains(
                                                        currentUserReference),
                                                onIcon: Icon(
                                                  Icons.favorite,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 21,
                                                ),
                                                offIcon: Icon(
                                                  Icons.favorite_border,
                                                  color: Colors.black,
                                                  size: 21,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Favoris',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .sixx,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Text(
                                                  'Année: ${listViewLocationRecord.annee?.toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .sixx,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation']!),
                            );
                          },
                        );
                      },
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
