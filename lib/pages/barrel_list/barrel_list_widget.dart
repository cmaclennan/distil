import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'barrel_list_model.dart';
export 'barrel_list_model.dart';

class BarrelListWidget extends StatefulWidget {
  const BarrelListWidget({super.key});

  static String routeName = 'BarrelList';
  static String routePath = '/barrelList';

  @override
  State<BarrelListWidget> createState() => _BarrelListWidgetState();
}

class _BarrelListWidgetState extends State<BarrelListWidget> {
  late BarrelListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarrelListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.all(6.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 30.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).info,
                size: 16.0,
              ),
              onPressed: () async {
                context.pushNamed(HomePageWidget.routeName);
              },
            ),
          ),
          title: Text(
            'Barrel List',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).primary,
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Visibility(
                        visible: responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 20.0, 15.0, 0.0),
                          child: FutureBuilder<List<TrackingRow>>(
                            future: TrackingTable().queryRows(
                              queryFn: (q) =>
                                  q.order('barrel_id', ascending: true),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitRipple(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<TrackingRow> gridViewTrackingRowList =
                                  snapshot.data!;

                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      MediaQuery.sizeOf(context).width < 1000.0
                                          ? 3
                                          : 8,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  childAspectRatio: 1.0,
                                ),
                                primary: false,
                                scrollDirection: Axis.vertical,
                                itemCount: gridViewTrackingRowList.length,
                                itemBuilder: (context, gridViewIndex) {
                                  final gridViewTrackingRow =
                                      gridViewTrackingRowList[gridViewIndex];
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        BarrelDetailsWidget.routeName,
                                        queryParameters: {
                                          'barrel': serializeParam(
                                            gridViewTrackingRow.barrelId,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: gridViewTrackingRow.barrelId!,
                                    icon: FaIcon(
                                      FontAwesomeIcons.drupal,
                                      color: Colors.white,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 75.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: () {
                                        if (gridViewTrackingRow.status ==
                                            'Greater than 2 years') {
                                          return FlutterFlowTheme.of(context)
                                              .hunterGreen;
                                        } else if (gridViewTrackingRow.status ==
                                            'Bottled') {
                                          return FlutterFlowTheme.of(context)
                                              .raisinBlack;
                                        } else if (gridViewTrackingRow.status ==
                                            'Less than 2 years') {
                                          return Color(0xFF8A8E90);
                                        } else if (gridViewTrackingRow.status ==
                                            'Transferred') {
                                          return FlutterFlowTheme.of(context)
                                              .primary;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .ecru;
                                        }
                                      }(),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Visibility(
                        visible: responsiveVisibility(
                          context: context,
                          tabletLandscape: false,
                          desktop: false,
                        ),
                        child: FutureBuilder<List<TrackingRow>>(
                          future: TrackingTable().queryRows(
                            queryFn: (q) =>
                                q.order('barrel_id', ascending: true),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitRipple(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<TrackingRow> listViewTrackingRowList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewTrackingRowList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewTrackingRow =
                                    listViewTrackingRowList[listViewIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        BarrelDetailsWidget.routeName,
                                        queryParameters: {
                                          'barrel': serializeParam(
                                            listViewTrackingRow.barrelId,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: listViewTrackingRow.barrelId!,
                                    icon: FaIcon(
                                      FontAwesomeIcons.drupal,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 36.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: () {
                                        if (listViewTrackingRow.status ==
                                            'Greater than 2 years') {
                                          return FlutterFlowTheme.of(context)
                                              .hunterGreen;
                                        } else if (listViewTrackingRow.status ==
                                            'Bottled') {
                                          return FlutterFlowTheme.of(context)
                                              .raisinBlack;
                                        } else if (listViewTrackingRow.status ==
                                            'Less than 2 years') {
                                          return Color(0xFF8A8E90);
                                        } else if (listViewTrackingRow.status ==
                                            'Transferred') {
                                          return FlutterFlowTheme.of(context)
                                              .primary;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .ecru;
                                        }
                                      }(),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
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
