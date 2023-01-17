import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WorkshopeInfoWidget extends StatefulWidget {
  const WorkshopeInfoWidget({
    Key? key,
    this.workshopid,
  }) : super(key: key);

  final String? workshopid;

  @override
  _WorkshopeInfoWidgetState createState() => _WorkshopeInfoWidgetState();
}

class _WorkshopeInfoWidgetState extends State<WorkshopeInfoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: StreamBuilder<List<ExtraActsRecord>>(
        stream: queryExtraActsRecord(
          queryBuilder: (extraActsRecord) =>
              extraActsRecord.where('Act_name', isEqualTo: widget.workshopid),
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: Color(0xFF0184BD),
                ),
              ),
            );
          }
          List<ExtraActsRecord> scrollingContainerExtraActsRecordList =
              snapshot.data!;
          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final scrollingContainerExtraActsRecord =
              scrollingContainerExtraActsRecordList.isNotEmpty
                  ? scrollingContainerExtraActsRecordList.first
                  : null;
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -4.18),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 50),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      scrollingContainerExtraActsRecord!.actPic,
                                      'https://identity.ksu.edu.sa/themes/custom/gavias_enzio/logo.png',
                                    ),
                                    width: double.infinity,
                                    height: 300,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.8),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xB3090F13),
                                        Color(0x00090F13)
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 40, 16, 16),
                                  child: InkWell(
                                    onTap: () async {
                                      if (Navigator.of(context).canPop()) {
                                        context.pop();
                                      }
                                      context.pushNamed(
                                        'workshops',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                          ),
                                        },
                                      );
                                    },
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 4, 4, 4),
                                        child: Icon(
                                          Icons.arrow_back_rounded,
                                          color: Color(0xFFFF5757),
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 12, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 6, 0),
                                    child: Text(
                                      scrollingContainerExtraActsRecord!
                                          .actName!,
                                      textAlign: TextAlign.start,
                                      style:
                                          FlutterFlowTheme.of(context).title2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Icon(
                                    Icons.schedule,
                                    color: Color(0xFF0184BD),
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 4, 0),
                                  child: Text(
                                    dateTimeFormat(
                                      'M/d h:mm a',
                                      scrollingContainerExtraActsRecord!.sdate!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF0184BD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Icon(
                                    Icons.schedule,
                                    color: Color(0xFF0184BD),
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 4, 0),
                                  child: Text(
                                    dateTimeFormat(
                                      'M/d h:mm a',
                                      scrollingContainerExtraActsRecord!.edate!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF0184BD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Icon(
                                    Icons.location_on_sharp,
                                    color: Color(0xFF0184BD),
                                    size: 20,
                                  ),
                                ),
                                Text(
                                  scrollingContainerExtraActsRecord!.actLoc!,
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF0184BD),
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (scrollingContainerExtraActsRecord!.seats ??
                                    true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 4),
                                    child: Icon(
                                      Icons.event_seat_rounded,
                                      color: Color(0xFF0184BD),
                                      size: 20,
                                    ),
                                  ),
                                if (scrollingContainerExtraActsRecord!.seats ??
                                    true)
                                  Text(
                                    scrollingContainerExtraActsRecord!.numSeats!
                                        .toString(),
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF0184BD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: Text(
                                      'تفاصيل ورشة العمل',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 12, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: Text(
                                      scrollingContainerExtraActsRecord!
                                          .actDec!,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
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
              ],
            ),
          );
        },
      ),
    );
  }
}
