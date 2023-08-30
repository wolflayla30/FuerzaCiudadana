import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'propuestas_model.dart';
export 'propuestas_model.dart';

class PropuestasWidget extends StatefulWidget {
  const PropuestasWidget({Key? key}) : super(key: key);

  @override
  _PropuestasWidgetState createState() => _PropuestasWidgetState();
}

class _PropuestasWidgetState extends State<PropuestasWidget> {
  late PropuestasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropuestasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE55F14),
        appBar: AppBar(
          backgroundColor: Color(0xFFE55F14),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Propuestas Candidatos',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Alcaldía',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0xFFFBFBFB),
                      fontSize: 24.0,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('PropuestasPatriciaCaicedo');
                  },
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('PropuestasPatriciaCaicedo');
                          },
                          text: 'Propuestas de Patricia Caicedo',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFE55F14),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                'Gobernador',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('propuestasRafaMartinez');
                  },
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://caracol.com.co/resizer/2Zj8iEhxuwyDBnIilqPXmoVk4q4=/650x488/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/FBDQ5TYWIBOGFAKGQ476WQDTSI.jpg',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('propuestasRafaMartinez');
                          },
                          text: 'Propuestas de Rafael Martínez',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFE55F14),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
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
