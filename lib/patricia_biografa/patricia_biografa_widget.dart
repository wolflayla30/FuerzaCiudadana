import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'patricia_biografa_model.dart';
export 'patricia_biografa_model.dart';

class PatriciaBiografaWidget extends StatefulWidget {
  const PatriciaBiografaWidget({Key? key}) : super(key: key);

  @override
  _PatriciaBiografaWidgetState createState() => _PatriciaBiografaWidgetState();
}

class _PatriciaBiografaWidgetState extends State<PatriciaBiografaWidget> {
  late PatriciaBiografaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatriciaBiografaModel());

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
            'Patricia Caicedo',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('patricia2');
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://elvocerodelaprovincia.com/wp-content/uploads/2023/08/Foto-1.jpeg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  'Experiencia Laboral',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Text(
                  '\nDIRECTOR ADMINISTRATIVO\ten el \nDEPARTAMENTO ADMINISTRATIVO DISTRITAL DE SOSTENIBILIDAD AMBIENTAL\t25/11/2019\t24/06/2021\n\n\nDIRECTOR ADMINISTRATIVO\tDEPARTAMENTO ADMINISTRATIVO DISTRITAL DE SOSTENIBILIDAD AMBIENTAL\t02/07/2018\t26/09/2018\n\n\nCONTRATISTA\tCORPORACION PROSPERAR\t\n15/08/2016\t22/12/2017\nCONTRATISTA\tSERVICIO NACIONAL DE APRENDIZAJE\n\t01/03/2016\t31/12/2016\n\nCONTRATISTA\tCONCEJO DE SANTA MARTA, DISTRITO TURISTICO, CULTURAL E HISTORICO\n\t01/06/2012\t31/12/2015\n\nCONTRATISTA\tCONCEJO DE SANTA MARTA, DISTRITO TURISTICO, CULTURAL E HISTORICO\n\t02/01/2008\t31/12/2011\n\nCONTRATISTA\tUNIDAD DE PARQUES NATURALES NACIONALES DE COLOMBIA\t01/09/2004\t30/06/2006\n\nCONTRATISTA\tCORPORACION AUTONOMA REGIONAL DEL MAGDALENA\t14/03/2003\t31/12/2004',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('patricia2');
                  },
                  child: Text(
                    'más sobre Patricia',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 24.0,
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
